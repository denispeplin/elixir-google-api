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

defmodule GoogleApi.ToolResults.V1beta3.Model.UIElementTooDeep do
  @moduledoc """
  A warning that the screen hierarchy is deeper than the recommended threshold.

  ## Attributes

  *   `depth` (*type:* `integer()`, *default:* `nil`) - The depth of the screen element
  *   `screenId` (*type:* `String.t`, *default:* `nil`) - The screen id of the element
  *   `screenStateId` (*type:* `String.t`, *default:* `nil`) - The screen state id of the element
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :depth => integer() | nil,
          :screenId => String.t() | nil,
          :screenStateId => String.t() | nil
        }

  field(:depth)
  field(:screenId)
  field(:screenStateId)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.UIElementTooDeep do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.UIElementTooDeep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.UIElementTooDeep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
