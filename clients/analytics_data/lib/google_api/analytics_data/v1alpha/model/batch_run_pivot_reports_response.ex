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

defmodule GoogleApi.AnalyticsData.V1alpha.Model.BatchRunPivotReportsResponse do
  @moduledoc """
  The batch response containing multiple pivot reports.

  ## Attributes

  *   `pivotReports` (*type:* `list(GoogleApi.AnalyticsData.V1alpha.Model.RunPivotReportResponse.t)`, *default:* `nil`) - Individual responses. Each response has a separate pivot report request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pivotReports => list(GoogleApi.AnalyticsData.V1alpha.Model.RunPivotReportResponse.t())
        }

  field(:pivotReports,
    as: GoogleApi.AnalyticsData.V1alpha.Model.RunPivotReportResponse,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1alpha.Model.BatchRunPivotReportsResponse do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1alpha.Model.BatchRunPivotReportsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1alpha.Model.BatchRunPivotReportsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
