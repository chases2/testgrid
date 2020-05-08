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

package log

import (
	"context"

	"github.com/sirupsen/logrus"

	configpb "github.com/GoogleCloudPlatform/testgrid/pb/config"
	summarypb "github.com/GoogleCloudPlatform/testgrid/pb/summary"
)

type AlertToLog struct{}

func (AlertToLog) OnConsistentFailure(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error {
	logrus.Warnf("%s:%s started failing consistently", new.GetDashboardName(), new.GetDashboardTabName())
	return nil
}

func (AlertToLog) OnEachFailure(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error {
	logrus.Infof("%s:%s is failing", new.GetDashboardName(), new.GetDashboardTabName())
	return nil
}

func (AlertToLog) OnEachSuccess(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error {
	logrus.Infof("%s:%s is passing", new.GetDashboardName(), new.GetDashboardTabName())
	return nil
}

func (AlertToLog) OnBecomingStale(ctx context.Context, new, old *summarypb.DashboardTabSummary, config *configpb.DashboardTab) error {
	logrus.Infof("%s:%s just became stale", new.GetDashboardName(), new.GetDashboardTabName())
	return nil
}
