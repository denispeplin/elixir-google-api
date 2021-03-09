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

defmodule GoogleApi.Analytics.V3.Model.GaData do
  @moduledoc """
  Analytics data for a given view (profile).

  ## Attributes

  *   `columnHeaders` (*type:* `list(GoogleApi.Analytics.V3.Model.GaDataColumnHeaders.t)`, *default:* `nil`) - Column headers that list dimension names followed by the metric names. The order of dimensions and metrics is same as specified in the request.
  *   `containsSampledData` (*type:* `boolean()`, *default:* `nil`) - Determines if Analytics data contains samples.
  *   `dataLastRefreshed` (*type:* `String.t`, *default:* `nil`) - The last refreshed time in seconds for Analytics data.
  *   `dataTable` (*type:* `GoogleApi.Analytics.V3.Model.GaDataDataTable.t`, *default:* `nil`) - 
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique ID for this data response.
  *   `itemsPerPage` (*type:* `integer()`, *default:* `nil`) - The maximum number of rows the response can contain, regardless of the actual number of rows returned. Its value ranges from 1 to 10,000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
  *   `kind` (*type:* `String.t`, *default:* `analytics#gaData`) - Resource type.
  *   `nextLink` (*type:* `String.t`, *default:* `nil`) - Link to next page for this Analytics data query.
  *   `previousLink` (*type:* `String.t`, *default:* `nil`) - Link to previous page for this Analytics data query.
  *   `profileInfo` (*type:* `GoogleApi.Analytics.V3.Model.GaDataProfileInfo.t`, *default:* `nil`) - Information for the view (profile), for which the Analytics data was requested.
  *   `query` (*type:* `GoogleApi.Analytics.V3.Model.GaDataQuery.t`, *default:* `nil`) - Analytics data request query parameters.
  *   `rows` (*type:* `list(list(String.t))`, *default:* `nil`) - Analytics data rows, where each row contains a list of dimension values followed by the metric values. The order of dimensions and metrics is same as specified in the request.
  *   `sampleSize` (*type:* `String.t`, *default:* `nil`) - The number of samples used to calculate the result.
  *   `sampleSpace` (*type:* `String.t`, *default:* `nil`) - Total size of the sample space from which the samples were selected.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - Link to this page.
  *   `totalResults` (*type:* `integer()`, *default:* `nil`) - The total number of rows for the query, regardless of the number of rows in the response.
  *   `totalsForAllResults` (*type:* `map()`, *default:* `nil`) - Total values for the requested metrics over all the results, not just the results returned in this response. The order of the metric totals is same as the metric order specified in the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnHeaders => list(GoogleApi.Analytics.V3.Model.GaDataColumnHeaders.t()) | nil,
          :containsSampledData => boolean() | nil,
          :dataLastRefreshed => String.t() | nil,
          :dataTable => GoogleApi.Analytics.V3.Model.GaDataDataTable.t() | nil,
          :id => String.t() | nil,
          :itemsPerPage => integer() | nil,
          :kind => String.t() | nil,
          :nextLink => String.t() | nil,
          :previousLink => String.t() | nil,
          :profileInfo => GoogleApi.Analytics.V3.Model.GaDataProfileInfo.t() | nil,
          :query => GoogleApi.Analytics.V3.Model.GaDataQuery.t() | nil,
          :rows => list(list(String.t())) | nil,
          :sampleSize => String.t() | nil,
          :sampleSpace => String.t() | nil,
          :selfLink => String.t() | nil,
          :totalResults => integer() | nil,
          :totalsForAllResults => map() | nil
        }

  field(:columnHeaders, as: GoogleApi.Analytics.V3.Model.GaDataColumnHeaders, type: :list)
  field(:containsSampledData)
  field(:dataLastRefreshed)
  field(:dataTable, as: GoogleApi.Analytics.V3.Model.GaDataDataTable)
  field(:id)
  field(:itemsPerPage)
  field(:kind)
  field(:nextLink)
  field(:previousLink)
  field(:profileInfo, as: GoogleApi.Analytics.V3.Model.GaDataProfileInfo)
  field(:query, as: GoogleApi.Analytics.V3.Model.GaDataQuery)
  field(:rows, type: :listlist)
  field(:sampleSize)
  field(:sampleSpace)
  field(:selfLink)
  field(:totalResults)
  field(:totalsForAllResults, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.GaData do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.GaData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.GaData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
