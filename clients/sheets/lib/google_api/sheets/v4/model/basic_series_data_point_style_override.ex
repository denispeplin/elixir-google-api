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

defmodule GoogleApi.Sheets.V4.Model.BasicSeriesDataPointStyleOverride do
  @moduledoc """
  Style override settings for a single series data point.

  ## Attributes

  *   `color` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - Color of the series data point. If empty, the series default is used.
  *   `colorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - Color of the series data point. If empty, the series default is used. If color is also set, this field takes precedence.
  *   `index` (*type:* `integer()`, *default:* `nil`) - Zero based index of the series data point.
  *   `pointStyle` (*type:* `GoogleApi.Sheets.V4.Model.PointStyle.t`, *default:* `nil`) - Point style of the series data point. Valid only if the chartType is AREA, LINE, or SCATTER. COMBO charts are also supported if the series chart type is AREA, LINE, or SCATTER. If empty, the series default is used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :color => GoogleApi.Sheets.V4.Model.Color.t(),
          :colorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :index => integer(),
          :pointStyle => GoogleApi.Sheets.V4.Model.PointStyle.t()
        }

  field(:color, as: GoogleApi.Sheets.V4.Model.Color)
  field(:colorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:index)
  field(:pointStyle, as: GoogleApi.Sheets.V4.Model.PointStyle)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BasicSeriesDataPointStyleOverride do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BasicSeriesDataPointStyleOverride.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BasicSeriesDataPointStyleOverride do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end