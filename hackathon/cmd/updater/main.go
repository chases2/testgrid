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
	"io/ioutil"
	"os"
	"runtime"
	"strconv"
	"strings"
	"time"

	"github.com/GoogleCloudPlatform/testgrid/hackathon/pkg/hackupdater"
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

func convert(pixels [][]bool) []updater.InflatedColumn {
	var outputColumns []updater.InflatedColumn
	for iRow, row := range pixels {
		for iCol, pixel := range row {
			result := test_status.TestStatus_TOOL_FAIL // Black
			if pixel {
				result = test_status.TestStatus_BUILD_PASSED // Green
			}
			cell := updater.Cell{
				Result: result,
			}
			if iCol >= len(outputColumns) {
				outputColumns = append(outputColumns, updater.InflatedColumn{})
			}
			if len(outputColumns[iCol].Cells) == 0 {
				outputColumns[iCol].Cells = make(map[string]updater.Cell)
			}
			outputColumns[iCol].Cells[strconv.Itoa(iRow)] = cell
		}
	}
	return outputColumns
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

	var cols []updater.InflatedColumn
	if len(opt.pixelsPath) > 0 {
		pixels, err := readPixels(opt.pixelsPath)
		if err != nil {
			logrus.Fatalf("Failed to read pixels file %s: %v", opt.pixelsPath, err)
		}
		cols = convert(pixels)
	} else if len(opt.pureString) > 0 {
		cols = convert(hackupdater.ASCII(opt.pureString))
	}
	hackupdater.Update(ctx, opt.creds, opt.confirm, cols, nil, opt.config, opt.group)
}
