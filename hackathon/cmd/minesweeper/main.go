package main

import (
	"context"
	"flag"
	"image"
	"image/color"
	"math/rand"
	"os"
	"strconv"

	"github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/hackupdater"
	hackimage "github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/image"
	"github.com/GoogleCloudPlatform/testgrid/util/gcs"
	"github.com/sirupsen/logrus"
)

// options configures the updater
type options struct {
	config  gcs.Path // gs://path/to/config/proto
	confirm bool
	group   string

	debug bool
	trace bool
}

// gatherOptions reads options from flags
func gatherFlagOptions(fs *flag.FlagSet, args ...string) options {
	var o options
	fs.Var(&o.config, "config", "gs://path/to/config.pb")
	fs.BoolVar(&o.confirm, "confirm", false, "Upload data if set")
	fs.StringVar(&o.group, "test-group", "unset", "Only update named group if set")

	fs.BoolVar(&o.debug, "debug", true, "Log debug lines if set")
	fs.BoolVar(&o.trace, "trace", false, "Log trace and debug lines if set")

	fs.Parse(args)
	return o
}

// gatherOptions reads options from flags
func gatherOptions() options {
	return gatherFlagOptions(flag.CommandLine, os.Args[1:]...)
}

type setting struct {
	w     int
	h     int
	mines int
}

var settings = []setting{
	{9, 9, 10},   // Beginner
	{16, 16, 40}, // Intermediate
	{30, 16, 99}, // Expert
}

type cell struct {
	mine    bool
	open    bool
	flagged bool
}

type board [][]*cell

func generate(s setting) board {
	cells := make([][]*cell, 0, s.w)
	for col := 0; col < s.w; col++ {
		cells = append(cells, make([]*cell, s.h))
		for row := 0; row < s.h; row++ {
			cells[col][row] = &cell{}
		}
	}
	// TODO(fejta): maybe better distro, aka ensure solvable.
	for s.mines > 0 {
		rw, rh := rand.Intn(s.w), rand.Intn(s.h)
		cell := cells[rw][rh]
		if cell.mine {
			continue
		}
		cell.mine = true
		s.mines--
	}

	return cells
}

func (b board) width() int {
	return len(b)
}

func (b board) height() int {
	if b.width() == 0 {
		return 0
	}
	return len(b[0])
}

func (b board) open(x, y int) bool {
	cell := b.cell(x, y)
	if cell == nil {
		return false
	}
	if cell.open {
		return false
	}
	b[x][y].open = true
	neighbors := b.neighbors(x, y)
	if mines(neighbors) > 0 {
		return true
	}
	for dx := -1; dx <= 1; dx++ {
		for dy := -1; dy <= 1; dy++ {
			b.open(x+dx, y+dy)
		}
	}
	return true
}

func (b board) cell(x, y int) *cell {
	if x < 0 || x >= b.width() {
		return nil
	}
	if y < 0 || y >= b.height() {
		return nil
	}
	return b[x][y]
}

func (b board) neighbors(x, y int) []*cell {
	cells := make([]*cell, 0, 8)
	for dx := -1; dx <= 1; dx++ {
		for dy := -1; dy <= 1; dy++ {
			if dx == dy && dy == 0 {
				continue
			}
			cell := b.cell(dx+x, dy+y)
			if cell == nil {
				continue
			}
			cells = append(cells, cell)
		}
	}
	return cells
}

func mines(neighbors []*cell) int {
	var found int
	for _, cell := range neighbors {
		if cell.mine {
			found++
		}
	}
	return found
}

var (
	gray       = color.RGBA{192, 192, 192, 0xff}
	blue       = color.RGBA{0, 0, 0xff, 0xff}
	green      = color.RGBA{0, 128, 0, 0xff}
	red        = color.RGBA{0xff, 0, 0, 0xff}
	black      = color.RGBA{0, 0, 0, 0xff}
	lightGreen = color.RGBA{0xaa, 0xee, 0xbb, 0xff}

	originalColors = []color.RGBA{
		gray,                            // 0
		blue,                            // 1
		green,                           // 2
		red,                             // 3
		color.RGBA{0, 0, 128, 0xff},     // 4
		color.RGBA{128, 0, 0, 0xff},     // 5
		color.RGBA{0, 128, 128, 0xff},   // 6
		color.RGBA{0, 0, 0, 0xff},       // 7
		color.RGBA{128, 128, 128, 0xff}, // 8
	}
)

func (b board) render() *hackimage.Image {
	w, h := b.width(), b.height()
	rect := image.Rect(0, 0, w, h)

	img := hackimage.New(rect)
	for x := 0; x < w; x++ {
		for y := 0; y < h; y++ {
			cell := b.cell(x, y)
			var c color.Color
			const id = "fake-id"
			switch {
			case cell.flagged:
				c = hackimage.MetaColor(gray, "!", "!", id)
			case !cell.open:
				c = hackimage.MetaColor(gray, ".", ".", id)
			case cell.mine:
				c = hackimage.MetaColor(red, "*", "*", id)
			default:
				m := mines(b.neighbors(x, y))
				msg := " "
				if m > 0 {
					msg = strconv.Itoa(m)
				}
				c = hackimage.MetaColor(lightGreen, msg, msg, id)
			}
			img.Set(x, y, c)
		}
	}
	return img
}

func main() {
	opt := gatherOptions()
	if !opt.confirm {
		logrus.Warning("--confirm=false (DRY-RUN): will not write to gcs")
	}
	switch {
	case opt.trace:
		logrus.SetLevel(logrus.TraceLevel)
	case opt.debug:
		logrus.SetLevel(logrus.DebugLevel)
	}

	logrus.SetReportCaller(true)

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()

	b := generate(settings[0])
	for i := 0; i < 10; i++ {
		b.open(rand.Intn(b.width()), rand.Intn(b.height()))
	}
	img := b.render()
	hackimage.Print(img)
	hackupdater.Update(ctx, "", opt.confirm, img.Cols, nil, opt.config, opt.group)
}
