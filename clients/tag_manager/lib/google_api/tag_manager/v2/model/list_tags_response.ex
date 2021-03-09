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

defmodule GoogleApi.TagManager.V2.Model.ListTagsResponse do
  @moduledoc """
  List Tags Response.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token for fetching the next page of results.
  *   `tag` (*type:* `list(GoogleApi.TagManager.V2.Model.Tag.t)`, *default:* `nil`) - All GTM Tags of a GTM Container.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :tag => list(GoogleApi.TagManager.V2.Model.Tag.t()) | nil
        }

  field(:nextPageToken)
  field(:tag, as: GoogleApi.TagManager.V2.Model.Tag, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.ListTagsResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.ListTagsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.ListTagsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
