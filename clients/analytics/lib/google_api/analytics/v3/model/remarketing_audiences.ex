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

defmodule GoogleApi.Analytics.V3.Model.RemarketingAudiences do
  @moduledoc """
  A remarketing audience collection lists Analytics remarketing audiences to which the user has access. Each resource in the collection corresponds to a single Analytics remarketing audience.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.Analytics.V3.Model.RemarketingAudience.t)`, *default:* `nil`) - A list of remarketing audiences.
  *   `itemsPerPage` (*type:* `integer()`, *default:* `nil`) - The maximum number of resources the response can contain, regardless of the actual number of resources returned. Its value ranges from 1 to 1000 with a value of 1000 by default, or otherwise specified by the max-results query parameter.
  *   `kind` (*type:* `String.t`, *default:* `analytics#remarketingAudiences`) - Collection type.
  *   `nextLink` (*type:* `String.t`, *default:* `nil`) - Link to next page for this remarketing audience collection.
  *   `previousLink` (*type:* `String.t`, *default:* `nil`) - Link to previous page for this view (profile) collection.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - The starting index of the resources, which is 1 by default or otherwise specified by the start-index query parameter.
  *   `totalResults` (*type:* `integer()`, *default:* `nil`) - The total number of results for the query, regardless of the number of results in the response.
  *   `username` (*type:* `String.t`, *default:* `nil`) - Email ID of the authenticated user
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Analytics.V3.Model.RemarketingAudience.t()) | nil,
          :itemsPerPage => integer() | nil,
          :kind => String.t() | nil,
          :nextLink => String.t() | nil,
          :previousLink => String.t() | nil,
          :startIndex => integer() | nil,
          :totalResults => integer() | nil,
          :username => String.t() | nil
        }

  field(:items, as: GoogleApi.Analytics.V3.Model.RemarketingAudience, type: :list)
  field(:itemsPerPage)
  field(:kind)
  field(:nextLink)
  field(:previousLink)
  field(:startIndex)
  field(:totalResults)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.RemarketingAudiences do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.RemarketingAudiences.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.RemarketingAudiences do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
