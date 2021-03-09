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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.ManagedShortLink do
  @moduledoc """
  Managed Short Link.

  ## Attributes

  *   `creationTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation timestamp of the short link.
  *   `flaggedAttribute` (*type:* `list(String.t)`, *default:* `nil`) - Attributes that have been flagged about this short url.
  *   `info` (*type:* `GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkInfo.t`, *default:* `nil`) - Full Dyamic Link info
  *   `link` (*type:* `String.t`, *default:* `nil`) - Short durable link url, for example, "https://sample.app.goo.gl/xyz123". Required.
  *   `linkName` (*type:* `String.t`, *default:* `nil`) - Link name defined by the creator. Required.
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - Visibility status of link.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => DateTime.t() | nil,
          :flaggedAttribute => list(String.t()) | nil,
          :info => GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkInfo.t() | nil,
          :link => String.t() | nil,
          :linkName => String.t() | nil,
          :visibility => String.t() | nil
        }

  field(:creationTime, as: DateTime)
  field(:flaggedAttribute, type: :list)
  field(:info, as: GoogleApi.FirebaseDynamicLinks.V1.Model.DynamicLinkInfo)
  field(:link)
  field(:linkName)
  field(:visibility)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.ManagedShortLink do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.ManagedShortLink.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.ManagedShortLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
