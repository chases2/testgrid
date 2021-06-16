/*
Copyright 2018 The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package main

import (
	"context"
	"errors"
	"flag"
	"fmt"
	"image"
	"image/color"
	"image/draw"
	"io/ioutil"
	"os"
	"runtime"
	"strings"
	"time"

	// supported image formats
	_ "image/gif"
	_ "image/jpeg"
	_ "image/png"

	"github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/hackupdater"
	hackimage "github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/image"
	"github.com/GoogleCloudPlatform/testgrid/pb/test_status"
	"github.com/GoogleCloudPlatform/testgrid/pkg/updater"
	"github.com/GoogleCloudPlatform/testgrid/util/gcs"

	"github.com/sirupsen/logrus"
)

// options configures the updater
type options struct {
	config           gcs.Path // gs://path/to/config/proto
	creds            string
	confirm          bool
	group            string
	groupConcurrency int
	buildConcurrency int
	wait             time.Duration
	groupTimeout     time.Duration
	buildTimeout     time.Duration
	gridPrefix       string
	pixelsPath       string
	pureString       string

	imagePath string
	dither    bool

	tileSize    int
	tilePattern string

	debug    bool
	trace    bool
	jsonLogs bool
}

// validate ensures sane options
func (o *options) validate() error {
	if o.config.String() == "" {
		return errors.New("empty --config")
	}
	if o.config.Bucket() == "k8s-testgrid" && o.gridPrefix == "" && o.confirm {
		return fmt.Errorf("--config=%s: cannot write grid state to gs://k8s-testgrid", o.config)
	}
	if o.groupConcurrency == 0 {
		o.groupConcurrency = runtime.NumCPU()
	}
	if o.buildConcurrency == 0 {
		o.buildConcurrency = runtime.NumCPU()
		if o.buildConcurrency > 4 {
			o.buildConcurrency = 4
		}
	}

	return nil
}

// gatherOptions reads options from flags
func gatherFlagOptions(fs *flag.FlagSet, args ...string) options {
	var o options
	fs.Var(&o.config, "config", "gs://path/to/config.pb")
	fs.StringVar(&o.creds, "gcp-service-account", "", "/path/to/gcp/creds (use local creds if empty)")
	fs.BoolVar(&o.confirm, "confirm", false, "Upload data if set")
	fs.StringVar(&o.group, "test-group", "", "Only update named group if set")
	fs.IntVar(&o.groupConcurrency, "group-concurrency", 0, "Manually define the number of groups to concurrently update if non-zero")
	fs.IntVar(&o.buildConcurrency, "build-concurrency", 0, "Manually define the number of builds to concurrently read if non-zero")
	fs.DurationVar(&o.wait, "wait", 0, "Ensure at least this much time has passed since the last loop (exit if zero).")
	fs.DurationVar(&o.groupTimeout, "group-timeout", 10*time.Minute, "Maximum time to wait for each group to update")
	fs.DurationVar(&o.buildTimeout, "build-timeout", 3*time.Minute, "Maximum time to wait to read each build")
	fs.StringVar(&o.gridPrefix, "grid-prefix", "grid", "Join this with the grid name to create the GCS suffix")

	fs.StringVar(&o.pixelsPath, "pixels-path", "", "Path of pixels input")
	fs.StringVar(&o.pureString, "pure-string", "", "Strings input")
	fs.StringVar(&o.imagePath, "image-path", "", "Path of image input")
	fs.IntVar(&o.tileSize, "tile-size", 0, "pixel length of each tile in image if set (otherwise single image")
	fs.StringVar(&o.tilePattern, "tile-pattern", "", "Path to tile pattern if using tiles, starting with !")
	fs.BoolVar(&o.dither, "dither", true, "Toggles whether to create dithered images")

	fs.BoolVar(&o.debug, "debug", false, "Log debug lines if set")
	fs.BoolVar(&o.trace, "trace", false, "Log trace and debug lines if set")
	fs.BoolVar(&o.jsonLogs, "json-logs", false, "Uses a json logrus formatter when set")

	fs.Parse(args)
	return o
}

// gatherOptions reads options from flags
func gatherOptions() options {
	return gatherFlagOptions(flag.CommandLine, os.Args[1:]...)
}
func rowName(row int) string {
	return fmt.Sprintf("%04d", row)
}

func convert(img image.Gray) []updater.InflatedColumn {
	rect := img.Bounds()
	var out []updater.InflatedColumn
	for col := rect.Min.X; col < rect.Max.X; col++ {
		cells := map[string]updater.Cell{}
		for row := rect.Min.Y; row < rect.Max.Y; row++ {
			var cell updater.Cell
			if img.GrayAt(col, row).Y > 0 {
				cell.Result = test_status.TestStatus_PASS
				switch row % 3 {
				case 0:
					cell.Icon = "."
				case 1:
					cell.Icon = "*"
				case 2:
					cell.Icon = "*"
					cell.Result = test_status.TestStatus_FAIL
				}
				cell.Result = test_status.TestStatus_FAIL
				cell.Icon = " "
			} else {
				cell.Result = test_status.TestStatus_BUILD_PASSED
			}
			name := rowName(row)
			cells[name] = cell
		}
		out = append(out, updater.InflatedColumn{
			Cells: cells,
		})
	}
	return out
}

func readPixels(pixelsPath string) ([][]bool, error) {
	body, err := ioutil.ReadFile(pixelsPath)
	if err != nil {
		return nil, err
	}
	var out [][]bool
	for _, line := range strings.Split(string(body), "\n") {
		var row []bool
		for _, c := range line {
			switch string(c) {
			case ".":
				row = append(row, true)
			case " ":
				row = append(row, false)
			default:
				return nil, fmt.Errorf("Unallowed character %s, only allow '.' and ' '", string(c))
			}
		}
		out = append(out, row)
	}
	return out, nil
}

func pixelImage(pixels [][]bool) image.Gray {
	var cols int
	for _, row := range pixels {
		if n := len(row); n > cols {
			cols = n
		}
	}
	rect := image.Rect(0, 0, cols, len(pixels))
	img := image.NewGray(rect)
	for row, cols := range pixels {
		for col, white := range cols {
			if white {
				img.SetGray(col, row, color.Gray{0xFF})
			}
		}
	}
	return *img
}

func main() {
	opt := gatherOptions()
	if err := opt.validate(); err != nil {
		logrus.Fatalf("Invalid flags: %v", err)
	}
	if !opt.confirm {
		logrus.Warning("--confirm=false (DRY-RUN): will not write to gcs")
	}
	switch {
	case opt.trace:
		logrus.SetLevel(logrus.TraceLevel)
	case opt.debug:
		logrus.SetLevel(logrus.DebugLevel)
	}

	if opt.jsonLogs {
		logrus.SetFormatter(&logrus.JSONFormatter{})
	}
	logrus.SetReportCaller(true)

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	storageClient, err := gcs.ClientWithCreds(ctx, opt.creds)
	if err != nil {
		logrus.Fatalf("Failed to create storage client: %v", err)
	}
	defer storageClient.Close()

	logrus.WithFields(logrus.Fields{
		"group": opt.groupConcurrency,
		"build": opt.buildConcurrency,
	}).Info("Configured concurrency")

	var out image.Image
	var img image.Gray
	if opt.pixelsPath != "" {
		pixels, err := readPixels(opt.pixelsPath)
		if err != nil {
			logrus.Fatalf("Failed to read pixels file %s: %v", opt.pixelsPath, err)
		}
		img = pixelImage(pixels)
		out = &img
	} else if opt.pureString != "" {
		panic("update") // img = pixelImage(hackupdater.ASCII(opt.pureString, false))
	} else {
		f, err := os.Open(opt.imagePath)
		if err != nil {
			logrus.Fatalf("os.Open(%q): %v", opt.imagePath, err)
		}
		i, _, err := image.Decode(f)
		if err != nil {
			logrus.Fatalf("image.Decode(%q): %v", opt.imagePath, err)
		}
		out = i
		img = hackimage.Gray(i)
	}

	if size := opt.tileSize; size > 0 {
		tiles := hackimage.Tiles(img, size)
		mapping := mapTiles(tiles, '0')
		pattern, err := readPattern(opt.tilePattern)
		if err != nil {
			logrus.Fatalf("readPattern(%q): %v", opt.tilePattern, err)
		}
		img = renderPattern(mapping, size, pattern)
		out = &img
	}
	tgi := renderImage(out, opt.dither)
	hackimage.Print(tgi)
	hackupdater.Update(ctx, opt.creds, opt.confirm, tgi.Cols, nil, opt.config, opt.group)
}

func mapTiles(tiles []image.Gray, ch rune) map[rune]image.Gray {
	mapping := make(map[rune]image.Gray, len(tiles))
	for _, t := range tiles {
		mapping[ch] = t
		ch++
	}
	return mapping
}

// http://www.asciitable.com/
func readPattern(path string) ([][]rune, error) {
	buf, err := ioutil.ReadFile(path)
	if err != nil {
		return nil, fmt.Errorf("read: %w", err)
	}
	lines := strings.Split(strings.TrimSpace(string(buf)), "\n")
	runes := make([][]rune, len(lines))
	for row, col := range lines {
		runes[row] = make([]rune, len(col))
		for c, ch := range col {
			runes[row][c] = ch
		}
	}
	return runes, nil
}

func renderImage(img image.Image, dither bool) *hackimage.Image {
	tgi := hackimage.New(img.Bounds())
	dp := image.Pt(0, 0)
	bounds := img.Bounds()
	r := bounds.Sub(bounds.Min).Add(dp)
	if dither {
		draw.FloydSteinberg.Draw(tgi, r, img, bounds.Min)
	} else {
		draw.Draw(tgi, r, img, bounds.Min, draw.Src)
	}
	return tgi
}

func renderPattern(tileset map[rune]image.Gray, size int, rows [][]rune) image.Gray {
	var width int
	for _, col := range rows {
		if n := len(col); n > width {
			width = n
		}
	}

	rect := image.Rect(0, 0, width*size, size*len(rows))
	img := image.NewGray(rect)
	for row, cols := range rows {
		for col, cell := range cols {
			tile, ok := tileset[cell]
			if !ok {
				panic(fmt.Sprintf("not found (%d,%d): %s", row, col, cell))
			}

			// https://blog.golang.org/image-draw
			dp := image.Pt(col*size, row*size)
			bounds := tile.Bounds()
			r := bounds.Sub(bounds.Min).Add(dp)
			draw.Draw(img, r, &tile, bounds.Min, draw.Src)
		}
	}
	return *img
}
