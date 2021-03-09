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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount do
  @moduledoc """
  A resource message representing a Google Analytics account.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this account was originally created.
  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates whether this Account is soft-deleted or not. Deleted accounts are excluded from List results unless specifically requested.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Human-readable display name for this account.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of this account. Format: accounts/{account} Example: "accounts/100"
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Country of business. Must be a Unicode CLDR region code.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when account payload fields were last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :deleted => boolean() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :regionCode => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:deleted)
  field(:displayName)
  field(:name)
  field(:regionCode)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
