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

defmodule GoogleApi.Analytics.V3.Model.LinkedForeignAccount do
  @moduledoc """
  JSON template for an Analytics Remarketing Audience Foreign Link.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID to which this linked foreign account belongs.
  *   `eligibleForSearch` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating whether this is eligible for search.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Entity ad account link ID.
  *   `internalWebPropertyId` (*type:* `String.t`, *default:* `nil`) - Internal ID for the web property to which this linked foreign account belongs.
  *   `kind` (*type:* `String.t`, *default:* `analytics#linkedForeignAccount`) - Resource type for linked foreign account.
  *   `linkedAccountId` (*type:* `String.t`, *default:* `nil`) - The foreign account ID. For example the an Google Ads `linkedAccountId` has the following format XXX-XXX-XXXX.
  *   `remarketingAudienceId` (*type:* `String.t`, *default:* `nil`) - Remarketing audience ID to which this linked foreign account belongs.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of this foreign account link.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the foreign account. For example, `ADWORDS_LINKS`, `DBM_LINKS`, `MCC_LINKS` or `OPTIMIZE`.
  *   `webPropertyId` (*type:* `String.t`, *default:* `nil`) - Web property ID of the form UA-XXXXX-YY to which this linked foreign account belongs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :eligibleForSearch => boolean() | nil,
          :id => String.t() | nil,
          :internalWebPropertyId => String.t() | nil,
          :kind => String.t() | nil,
          :linkedAccountId => String.t() | nil,
          :remarketingAudienceId => String.t() | nil,
          :status => String.t() | nil,
          :type => String.t() | nil,
          :webPropertyId => String.t() | nil
        }

  field(:accountId)
  field(:eligibleForSearch)
  field(:id)
  field(:internalWebPropertyId)
  field(:kind)
  field(:linkedAccountId)
  field(:remarketingAudienceId)
  field(:status)
  field(:type)
  field(:webPropertyId)
end

defimpl Poison.Decoder, for: GoogleApi.Analytics.V3.Model.LinkedForeignAccount do
  def decode(value, options) do
    GoogleApi.Analytics.V3.Model.LinkedForeignAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Analytics.V3.Model.LinkedForeignAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
