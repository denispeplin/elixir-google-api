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

defmodule GoogleApi.TagManager.V2.Model.Condition do
  @moduledoc """
  Represents a predicate.

  ## Attributes

  *   `parameter` (*type:* `list(GoogleApi.TagManager.V2.Model.Parameter.t)`, *default:* `nil`) - A list of named parameters (key/value), depending on the condition's type. Notes: - For binary operators, include parameters named arg0 and arg1 for specifying the left and right operands, respectively. - At this time, the left operand (arg0) must be a reference to a variable. - For case-insensitive Regex matching, include a boolean parameter named ignore_case that is set to true. If not specified or set to any other value, the matching will be case sensitive. - To negate an operator, include a boolean parameter named negate boolean parameter that is set to true. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of operator for this condition. @mutable tagmanager.accounts.containers.workspaces.triggers.create @mutable tagmanager.accounts.containers.workspaces.triggers.update
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameter => list(GoogleApi.TagManager.V2.Model.Parameter.t()) | nil,
          :type => String.t() | nil
        }

  field(:parameter, as: GoogleApi.TagManager.V2.Model.Parameter, type: :list)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.Condition do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.Condition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.Condition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
