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
	"testing"

	configpb "github.com/GoogleCloudPlatform/testgrid/pb/config"
	summarypb "github.com/GoogleCloudPlatform/testgrid/pb/summary"
)

func TestCallOutDifferences(t *testing.T) {
	passingDashboard := summarypb.DashboardSummary{
		TabSummaries: []*summarypb.DashboardTabSummary{
			{
				DashboardName:    "dash",
				DashboardTabName: "tab",
				OverallStatus:    summarypb.DashboardTabSummary_PASS,
			},
		},
	}

	failingDashboard := summarypb.DashboardSummary{
		TabSummaries: []*summarypb.DashboardTabSummary{
			{
				DashboardName:    "dash",
				DashboardTabName: "tab",
				OverallStatus:    summarypb.DashboardTabSummary_FAIL,
				FailingTestSummaries: []*summarypb.FailingTestSummary{
					{
						TestName:  "badtest",
						FailCount: 1,
					},
				},
			},
		},
	}

	staleDashboard := summarypb.DashboardSummary{
		TabSummaries: []*summarypb.DashboardTabSummary{
			{
				DashboardName:    "dash",
				DashboardTabName: "tab",
				OverallStatus:    summarypb.DashboardTabSummary_STALE,
			},
		},
	}

	testConfig := configpb.Dashboard{
		DashboardTab: []*configpb.DashboardTab{
			{
				Name: "tab",
				AlertOptions: &configpb.DashboardTabAlertOptions{
					NumFailuresToAlert: 1,
				},
			},
		},
		Name: "dash",
	}

	tests := []struct {
		name                      string
		newSummary                *summarypb.DashboardSummary
		oldSummary                *summarypb.DashboardSummary
		config                    *configpb.Dashboard
		expectOnEachFailure       int
		expectOnEachSuccess       int
		expectOnConsistentFailure int
		expectOnBecomingStale     int
	}{
		{
			name:       "No DashboardTabs; No Alert",
			oldSummary: &summarypb.DashboardSummary{},
			newSummary: &summarypb.DashboardSummary{},
			config:     &configpb.Dashboard{},
		},
		{
			name:                "Pass to Pass Dashboards",
			oldSummary:          &passingDashboard,
			newSummary:          &passingDashboard,
			config:              &testConfig,
			expectOnEachSuccess: 1,
		},
		{
			name:                      "Pass to Fail Dashboards",
			oldSummary:                &passingDashboard,
			newSummary:                &failingDashboard,
			config:                    &testConfig,
			expectOnEachFailure:       1,
			expectOnConsistentFailure: 1,
		},
		{
			name:                "Fail to Fail Dashboards",
			oldSummary:          &failingDashboard,
			newSummary:          &failingDashboard,
			config:              &testConfig,
			expectOnEachFailure: 1,
		},
		{
			name:                  "Pass to Stale Dashboards",
			oldSummary:            &passingDashboard,
			newSummary:            &staleDashboard,
			config:                &testConfig,
			expectOnBecomingStale: 1,
		},
		{
			name:       "Stale to Stale Dashbord; no alert",
			oldSummary: &staleDashboard,
			newSummary: &staleDashboard,
			config:     &testConfig,
		},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			var k TestKlaxon
			callOutDifferences(context.Background(), test.newSummary, test.oldSummary, test.config, []Klaxon{&k})

			if k.counts.OnEachSuccess != test.expectOnEachSuccess {
				t.Errorf("Number of OnEachSuccess calls was unexpected; got %d, expected %d", k.counts.OnEachSuccess, test.expectOnEachSuccess)
			}

			if k.counts.OnEachFailure != test.expectOnEachFailure {
				t.Errorf("Number of OnEachFailure calls was unexpected; got %d, expected %d", k.counts.OnEachFailure, test.expectOnEachFailure)
			}

			if k.counts.OnBecomingStale != test.expectOnBecomingStale {
				t.Errorf("Number of OnBecomingStale calls was unexpected; got %d, expected %d", k.counts.OnBecomingStale, test.expectOnBecomingStale)
			}

			if k.counts.OnConsistentFailure != test.expectOnConsistentFailure {
				t.Errorf("Number of OnConsistentFailure calls was unexpected; got %d, expected %d", k.counts.OnConsistentFailure, test.expectOnConsistentFailure)
			}
		})
	}
}

type TestKlaxon struct {
	counts struct {
		OnEachFailure       int
		OnEachSuccess       int
		OnConsistentFailure int
		OnBecomingStale     int
	}
}

func (t *TestKlaxon) OnConsistentFailure(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error {
	t.counts.OnConsistentFailure++
	return nil
}

func (t *TestKlaxon) OnEachFailure(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error {
	t.counts.OnEachFailure++
	return nil
}

func (t *TestKlaxon) OnEachSuccess(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error {
	t.counts.OnEachSuccess++
	return nil
}

func (t *TestKlaxon) OnBecomingStale(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error {
	t.counts.OnBecomingStale++
	return nil
}
