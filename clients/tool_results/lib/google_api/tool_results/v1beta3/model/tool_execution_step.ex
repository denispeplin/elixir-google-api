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

defmodule GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep do
  @moduledoc """
  Generic tool step to be used for binaries we do not explicitly support. For example: running cp to copy artifacts from one location to another.

  ## Attributes

  *   `toolExecution` (*type:* `GoogleApi.ToolResults.V1beta3.Model.ToolExecution.t`, *default:* `nil`) - A Tool execution. - In response: present if set by create/update request - In create/update request: optional
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :toolExecution => GoogleApi.ToolResults.V1beta3.Model.ToolExecution.t() | nil
        }

  field(:toolExecution, as: GoogleApi.ToolResults.V1beta3.Model.ToolExecution)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.ToolExecutionStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
