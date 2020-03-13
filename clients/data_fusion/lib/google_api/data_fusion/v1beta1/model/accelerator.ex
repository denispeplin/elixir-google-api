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

defmodule GoogleApi.DataFusion.V1beta1.Model.Accelerator do
  @moduledoc """
  Identifies Data Fusion accelerators for an instance.

  ## Attributes

  *   `acceleratorType` (*type:* `String.t`, *default:* `nil`) - The type of an accelator for a CDF instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceleratorType => String.t()
        }

  field(:acceleratorType)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1beta1.Model.Accelerator do
  def decode(value, options) do
    GoogleApi.DataFusion.V1beta1.Model.Accelerator.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1beta1.Model.Accelerator do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
