/*
Copyright 2020 The Kubernetes Authors.

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

package alerter

import (
	"context"

	configpb "github.com/GoogleCloudPlatform/testgrid/pb/config"
	summarypb "github.com/GoogleCloudPlatform/testgrid/pb/summary"
)

// A Klaxon is a component that reacts when a difference in summary is detected
type Klaxon interface {
	// OnConsistentFailure is called when a DashboardTab has failed <num_alerts> times where it hasn't before.
	// OnConsistentFailure won't be called again until the test succeeds once.
	OnConsistentFailure(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error

	// OnEachFailure is called for every loop that the DashboardTab is summarized as failed.
	// OnEachFailure is called over and over again, so it's important that it be idempotent.
	OnEachFailure(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error

	// OnEachSuccess is called for every loop that the DashboardTab is summarized as passing
	// OnEachSuccess is called over and over again.
	OnEachSuccess(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error

	// OnBecomingStale is called when a DashboardTab is first summarized as stale.
	// OnBecomingStale won't be called again until it is summarized as something else.
	OnBecomingStale(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error
}
