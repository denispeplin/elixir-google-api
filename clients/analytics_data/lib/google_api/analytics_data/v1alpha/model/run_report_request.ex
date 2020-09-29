# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AnalyticsData.V1alpha.Model.RunReportRequest do
  @moduledoc """
  The request to generate a report.

  ## Attributes

  *   `cohortSpec` (*type:* `GoogleApi.AnalyticsData.V1alpha.Model.CohortSpec.t`, *default:* `nil`) - Cohort group associated with this request. If there is a cohort group in the request the 'cohort' dimension must be present.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - A currency code in ISO4217 format, such as "AED", "USD", "JPY". If the field is empty, the report uses the entity's default currency.
  *   `dateRanges` (*type:* `list(GoogleApi.AnalyticsData.V1alpha.Model.DateRange.t)`, *default:* `nil`) - Date ranges of data to read. If multiple date ranges are requested, each response row will contain a zero based date range index. If two date ranges overlap, the event data for the overlapping days is included in the response rows for both date ranges. In a cohort request, this `dateRanges` must be unspecified.
  *   `dimensionFilter` (*type:* `GoogleApi.AnalyticsData.V1alpha.Model.FilterExpression.t`, *default:* `nil`) - The filter clause of dimensions. Dimensions must be requested to be used in this filter. Metrics cannot be used in this filter.
  *   `dimensions` (*type:* `list(GoogleApi.AnalyticsData.V1alpha.Model.Dimension.t)`, *default:* `nil`) - The dimensions requested and displayed.
  *   `entity` (*type:* `GoogleApi.AnalyticsData.V1alpha.Model.Entity.t`, *default:* `nil`) - A property whose events are tracked. Within a batch request, this entity should either be unspecified or consistent with the batch-level entity.
  *   `keepEmptyRows` (*type:* `boolean()`, *default:* `nil`) - If false or unspecified, each row with all metrics equal to 0 will not be returned. If true, these rows will be returned if they are not separately removed by a filter.
  *   `limit` (*type:* `String.t`, *default:* `nil`) - The number of rows to return. If unspecified, 10 rows are returned. If -1, all rows are returned.
  *   `metricAggregations` (*type:* `list(String.t)`, *default:* `nil`) - Aggregation of metrics. Aggregated metric values will be shown in rows where the dimension_values are set to "RESERVED_(MetricAggregation)".
  *   `metricFilter` (*type:* `GoogleApi.AnalyticsData.V1alpha.Model.FilterExpression.t`, *default:* `nil`) - The filter clause of metrics. Applied at post aggregation phase, similar to SQL having-clause. Metrics must be requested to be used in this filter. Dimensions cannot be used in this filter.
  *   `metrics` (*type:* `list(GoogleApi.AnalyticsData.V1alpha.Model.Metric.t)`, *default:* `nil`) - The metrics requested and displayed.
  *   `offset` (*type:* `String.t`, *default:* `nil`) - The row count of the start row. The first row is counted as row 0.
  *   `orderBys` (*type:* `list(GoogleApi.AnalyticsData.V1alpha.Model.OrderBy.t)`, *default:* `nil`) - Specifies how rows are ordered in the response.
  *   `returnPropertyQuota` (*type:* `boolean()`, *default:* `nil`) - Toggles whether to return the current state of this Analytics Property's quota. Quota is returned in [PropertyQuota](#PropertyQuota).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cohortSpec => GoogleApi.AnalyticsData.V1alpha.Model.CohortSpec.t(),
          :currencyCode => String.t(),
          :dateRanges => list(GoogleApi.AnalyticsData.V1alpha.Model.DateRange.t()),
          :dimensionFilter => GoogleApi.AnalyticsData.V1alpha.Model.FilterExpression.t(),
          :dimensions => list(GoogleApi.AnalyticsData.V1alpha.Model.Dimension.t()),
          :entity => GoogleApi.AnalyticsData.V1alpha.Model.Entity.t(),
          :keepEmptyRows => boolean(),
          :limit => String.t(),
          :metricAggregations => list(String.t()),
          :metricFilter => GoogleApi.AnalyticsData.V1alpha.Model.FilterExpression.t(),
          :metrics => list(GoogleApi.AnalyticsData.V1alpha.Model.Metric.t()),
          :offset => String.t(),
          :orderBys => list(GoogleApi.AnalyticsData.V1alpha.Model.OrderBy.t()),
          :returnPropertyQuota => boolean()
        }

  field(:cohortSpec, as: GoogleApi.AnalyticsData.V1alpha.Model.CohortSpec)
  field(:currencyCode)
  field(:dateRanges, as: GoogleApi.AnalyticsData.V1alpha.Model.DateRange, type: :list)
  field(:dimensionFilter, as: GoogleApi.AnalyticsData.V1alpha.Model.FilterExpression)
  field(:dimensions, as: GoogleApi.AnalyticsData.V1alpha.Model.Dimension, type: :list)
  field(:entity, as: GoogleApi.AnalyticsData.V1alpha.Model.Entity)
  field(:keepEmptyRows)
  field(:limit)
  field(:metricAggregations, type: :list)
  field(:metricFilter, as: GoogleApi.AnalyticsData.V1alpha.Model.FilterExpression)
  field(:metrics, as: GoogleApi.AnalyticsData.V1alpha.Model.Metric, type: :list)
  field(:offset)
  field(:orderBys, as: GoogleApi.AnalyticsData.V1alpha.Model.OrderBy, type: :list)
  field(:returnPropertyQuota)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1alpha.Model.RunReportRequest do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1alpha.Model.RunReportRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1alpha.Model.RunReportRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
