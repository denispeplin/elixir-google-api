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

defmodule GoogleApi.CustomSearch.V1.Model.SearchSearchInformation do
  @moduledoc """
  Metadata about a search operation.

  ## Attributes

  *   `formattedSearchTime` (*type:* `String.t`, *default:* `nil`) - The time taken for the server to return search results, formatted according to locale style.
  *   `formattedTotalResults` (*type:* `String.t`, *default:* `nil`) - The total number of search results, formatted according to locale style.
  *   `searchTime` (*type:* `float()`, *default:* `nil`) - The time taken for the server to return search results.
  *   `totalResults` (*type:* `String.t`, *default:* `nil`) - The total number of search results returned by the query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formattedSearchTime => String.t() | nil,
          :formattedTotalResults => String.t() | nil,
          :searchTime => float() | nil,
          :totalResults => String.t() | nil
        }

  field(:formattedSearchTime)
  field(:formattedTotalResults)
  field(:searchTime)
  field(:totalResults)
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.SearchSearchInformation do
  def decode(value, options) do
    GoogleApi.CustomSearch.V1.Model.SearchSearchInformation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.SearchSearchInformation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
