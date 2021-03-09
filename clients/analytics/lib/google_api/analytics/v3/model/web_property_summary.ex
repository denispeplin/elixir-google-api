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

defmodule GoogleApi.Analytics.V3.Model.WebPropertySummary do
  @moduledoc """
  JSON template for an Analytics WebPropertySummary. WebPropertySummary returns basic information (i.e., summary) for a web property.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Web property ID of the form UA-XXXXX-YY.
  *   `internalWebPropertyId` (*type:* `String.t`, *default:* `nil`) - Internal ID for this web property.
  *   `kind` (*type:* `String.t`, *default:* `analytics#webPropertySummary`) - Resource type for Analytics WebPropertySummary.
  *   `level` (*type:* `String.t`, *default:* `nil`) - Level for this web property. Possible values are STANDARD or PREMIUM.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Web property name.
  *   `profiles` (*type:* `list(GoogleApi.Analytics.V3.Model.ProfileSummary.t)`, *default:* `nil`) - List of profiles under this web property.
  *   `starred` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this web property is starred or not.
  *   `websiteUrl` (*type:* `String.t`, *default:* `nil`) - Website url for this web property.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :internalWebPropertyId => String.t() | nil,
          :kind => String.t() | nil,
          :level => String.t() | nil,
          :name => String.t() | nil,
          :profiles => list(GoogleApi.Analytics.V3.Model.ProfileSummary.t()) | nil,
          :starred => boolean() | nil,
          :websiteUrl => String.t() | nil
        }

  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:level)
  field(:name)
  field(:profiles, as: GoogleApi.Analytics.V3.Model.ProfileSummary, type: :list)
  field(:starred)
  field(:websiteUrl)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.WebPropertySummary do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.WebPropertySummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.WebPropertySummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
