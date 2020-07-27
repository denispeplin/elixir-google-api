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

defmodule GoogleApi.DFAReporting.V34.Model.DisjunctiveMatchStatement do
  @moduledoc """
  Represents a Disjunctive Match Statement resource, which is a conjunction (and) of disjunctive (or) boolean statements.

  ## Attributes

  *   `eventFilters` (*type:* `list(GoogleApi.DFAReporting.V34.Model.EventFilter.t)`, *default:* `nil`) - The event filters contained within this disjunctive match statement.
  *   `kind` (*type:* `String.t`, *default:* `dfareporting#disjunctiveMatchStatement`) - The kind of resource this is, in this case dfareporting#disjunctiveMatchStatement.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :eventFilters => list(GoogleApi.DFAReporting.V34.Model.EventFilter.t()),
          :kind => String.t()
        }

  field(:eventFilters, as: GoogleApi.DFAReporting.V34.Model.EventFilter, type: :list)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V34.Model.DisjunctiveMatchStatement do
  def decode(value, options) do
    GoogleApi.DFAReporting.V34.Model.DisjunctiveMatchStatement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V34.Model.DisjunctiveMatchStatement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
