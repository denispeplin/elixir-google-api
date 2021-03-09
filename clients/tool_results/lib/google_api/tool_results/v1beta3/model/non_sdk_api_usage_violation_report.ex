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

defmodule GoogleApi.ToolResults.V1beta3.Model.NonSdkApiUsageViolationReport do
  @moduledoc """
  Contains a summary and examples of non-sdk API usage violations.

  ## Attributes

  *   `exampleApis` (*type:* `list(GoogleApi.ToolResults.V1beta3.Model.NonSdkApi.t)`, *default:* `nil`) - Examples of the detected API usages.
  *   `minSdkVersion` (*type:* `integer()`, *default:* `nil`) - Minimum API level required for the application to run.
  *   `targetSdkVersion` (*type:* `integer()`, *default:* `nil`) - Specifies the API Level on which the application is designed to run.
  *   `uniqueApis` (*type:* `integer()`, *default:* `nil`) - Total number of unique Non-SDK API's accessed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exampleApis => list(GoogleApi.ToolResults.V1beta3.Model.NonSdkApi.t()) | nil,
          :minSdkVersion => integer() | nil,
          :targetSdkVersion => integer() | nil,
          :uniqueApis => integer() | nil
        }

  field(:exampleApis, as: GoogleApi.ToolResults.V1beta3.Model.NonSdkApi, type: :list)
  field(:minSdkVersion)
  field(:targetSdkVersion)
  field(:uniqueApis)
end

defimpl Poison.Decoder, for: GoogleApi.ToolResults.V1beta3.Model.NonSdkApiUsageViolationReport do
  def decode(value, options) do
    GoogleApi.ToolResults.V1beta3.Model.NonSdkApiUsageViolationReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ToolResults.V1beta3.Model.NonSdkApiUsageViolationReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
