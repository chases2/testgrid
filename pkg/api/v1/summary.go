/*
Copyright 2023 The TestGrid Authors.

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

package v1

import (
	"context"
	"errors"
	"fmt"
	"net/http"

	"github.com/gorilla/mux"

	"github.com/golang/protobuf/ptypes/timestamp"
	"github.com/sirupsen/logrus"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/GoogleCloudPlatform/testgrid/config"
	apipb "github.com/GoogleCloudPlatform/testgrid/pb/api/v1"
	summarypb "github.com/GoogleCloudPlatform/testgrid/pb/summary"
	"github.com/GoogleCloudPlatform/testgrid/pkg/summarizer"
)

const (
	// PASSING is "PASSING"
	PASSING = "PASSING"
	// FAILING is "FAILING"
	FAILING = "FAILING"
	// FLAKY is "FLAKY"
	FLAKY = "FLAKY"
	// ACCEPTABLE is "ACCEPTABLE"
	ACCEPTABLE = "ACCEPTABLE"
	// STALE is "STALE"
	STALE = "STALE"
	// BROKEN is "BROKEN"
	BROKEN = "BROKEN"
	// UNKNOWN is "UNKNOWN"
	UNKNOWN = "UNKNOWN"
	// PENDING is "PENDING"
	PENDING = "PENDING"
)

var (
	// These should be in line with the TabStatus enum in state.proto.
	tabStatusStr = map[summarypb.DashboardTabSummary_TabStatus]string{
		summarypb.DashboardTabSummary_PASS:       PASSING,
		summarypb.DashboardTabSummary_FAIL:       FAILING,
		summarypb.DashboardTabSummary_FLAKY:      FLAKY,
		summarypb.DashboardTabSummary_STALE:      STALE,
		summarypb.DashboardTabSummary_BROKEN:     BROKEN,
		summarypb.DashboardTabSummary_PENDING:    PENDING,
		summarypb.DashboardTabSummary_ACCEPTABLE: ACCEPTABLE,
	}

	rpcToHTTPCodes = map[codes.Code]int{
		codes.NotFound:        http.StatusNotFound,
		codes.InvalidArgument: http.StatusBadRequest,
		codes.Internal:        http.StatusInternalServerError,
	}
)

// fetchSummary returns the summary struct as defined in summary.proto.
// Returns an error iff the scope refers to non-existent bucket OR server fails to read the summary.
func (s *Server) fetchSummary(ctx context.Context, scope, dashboard string) (*summarypb.DashboardSummary, error) {
	configPath, _, err := s.configPath(scope)

	summaryPath, err := summarizer.SummaryPath(*configPath, s.SummaryPathPrefix, dashboard)
	if err != nil {
		return nil, fmt.Errorf("failed to create the summary path: %v", err)
	}

	summary, _, _, err := summarizer.ReadSummary(ctx, s.Client, *summaryPath)
	if err != nil {
		return nil, fmt.Errorf("failed to download summary at %v: %v", summaryPath.String(), err)
	}

	return summary, nil
}

// ListTabSummaries returns the list of tab summaries for the particular dashboard.
// Returns an error iff dashboard does not exist OR the server can't read summaries from GCS bucket.
func (s *Server) ListTabSummaries(ctx context.Context, req *apipb.ListTabSummariesRequest) (*apipb.ListTabSummariesResponse, error) {
	ctx, cancel := context.WithTimeout(ctx, s.Timeout)
	defer cancel()

	scope := req.GetScope()
	cfg, err := s.getConfig(ctx, logrus.WithContext(ctx), scope)

	if err != nil {
		var sc codes.Code
		if errors.Is(err, ErrScopeNotProvided) {
			sc = codes.InvalidArgument
		} else {
			sc = codes.Internal
		}
		return nil, status.Error(sc, fmt.Sprintf("failed to fetch config from {%q}: %v", scope, err))
	}

	cfg.Mutex.RLock()
	defer cfg.Mutex.RUnlock()

	dashboardKey := config.Normalize(req.GetDashboard())
	if _, ok := cfg.NormalDashboard[dashboardKey]; !ok {
		return nil, status.Error(codes.NotFound, fmt.Sprintf("Dashboard {%q} not found.", dashboardKey))
	}

	summary, err := s.fetchSummary(ctx, scope, req.GetDashboard())
	if err != nil {
		return nil, status.Error(codes.Internal, fmt.Sprintf("failed to fetch summary for dashboard {%q}: %v", dashboardKey, err))
	}

	var resp apipb.ListTabSummariesResponse
	for _, tabSummary := range summary.TabSummaries {
		ts := &apipb.TabSummary{
			DashboardName:         tabSummary.DashboardName,
			TabName:               tabSummary.DashboardTabName,
			OverallStatus:         tabStatusStr[tabSummary.OverallStatus],
			DetailedStatusMessage: tabSummary.Status,
			LastRunTimestamp: &timestamp.Timestamp{
				Seconds: int64(tabSummary.LastRunTimestamp),
			},
			LastUpdateTimestamp: &timestamp.Timestamp{
				Seconds: int64(tabSummary.LastUpdateTimestamp),
			},
			LatestGreen: tabSummary.LatestGreen,
		}
		resp.TabSummaries = append(resp.TabSummaries, ts)
	}
	return &resp, nil

}

// ListTabSummariesHTTP returns the list of tab summaries as a json.
// Response json: ListTabSummariesResponse
func (s Server) ListTabSummariesHTTP(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	req := apipb.ListTabSummariesRequest{
		Scope:     r.URL.Query().Get(scopeParam),
		Dashboard: vars["dashboard"],
	}
	resp, err := s.ListTabSummaries(r.Context(), &req)

	// Fetch the errors from RPC call and return a matching HTTP status.
	if err != nil {
		rpcStatus, isStatusErr := status.FromError(err)
		var httpStatus int

		if !isStatus {
			httpStatus = http.StatusUn
		}
		httpStatus := rpcToHTTPCodes[st.Code()]
	}

	s.writeJSON(w, &resp)
}
