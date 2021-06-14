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

package hackupdater

import (
	"context"
	"time"

	"github.com/GoogleCloudPlatform/testgrid/pkg/updater"
	"github.com/GoogleCloudPlatform/testgrid/util/gcs"
	"github.com/GoogleCloudPlatform/testgrid/util/metrics"

	"github.com/sirupsen/logrus"
)

const (
	gridPrefix       = "grid"
	groupTimeout     = 10 * time.Minute
	groupConcurrency = 1
)

// Update updates testgrid group.
//
// creds: GCS secret file path
// confirm: whether write to GCS or not
// cols: array of inflated columns
// issues: associated issues
// config: path of config. gs://k8s-testgrid-hackathon/config
// group: tab to be updated. for exmaple: chaodaiG
func Update(ctx context.Context, creds string, confirm bool, cols []updater.InflatedColumn, issues map[string][]string, config gcs.Path, group string) {
	storageClient, err := gcs.ClientWithCreds(ctx, creds)
	if err != nil {
		logrus.Fatalf("Failed to create storage client: %v", err)
	}
	defer storageClient.Close()

	client := gcs.NewClient(storageClient)

	groupUpdater := updater.InMem(groupTimeout, confirm, cols, issues)
	cycle := metrics.NewLogInt64("cycle_duration", "How long an update cycle took, in seconds.", logrus.New())
	start := time.Now()
	if err := updater.Update(ctx, client, config, gridPrefix, groupConcurrency, group, groupUpdater, confirm); err != nil {
		logrus.WithError(err).Error("Could not update")
	}
	cycle.Set(int64(time.Since(start).Seconds()))
	logrus.Infof("Update completed in %s", time.Since(start))
}
