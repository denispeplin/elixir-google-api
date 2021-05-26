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

defmodule GoogleApi.Composer.V1.Model.CheckUpgradeResponse do
  @moduledoc """
  Message containing information about the result of an upgrade check operation.

  ## Attributes

  *   `buildLogUri` (*type:* `String.t`, *default:* `nil`) - Output only. Url for a docker build log of an upgraded image.
  *   `containsPypiModulesConflict` (*type:* `String.t`, *default:* `nil`) - Output only. Whether build has succeeded or failed on modules conflicts.
  *   `pypiConflictBuildLogExtract` (*type:* `String.t`, *default:* `nil`) - Output only. Extract from a docker image build log containing information about pypi modules conflicts.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buildLogUri => String.t() | nil,
          :containsPypiModulesConflict => String.t() | nil,
          :pypiConflictBuildLogExtract => String.t() | nil
        }

  field(:buildLogUri)
  field(:containsPypiModulesConflict)
  field(:pypiConflictBuildLogExtract)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.CheckUpgradeResponse do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.CheckUpgradeResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.CheckUpgradeResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
