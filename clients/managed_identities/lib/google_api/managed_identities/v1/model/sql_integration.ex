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

defmodule GoogleApi.ManagedIdentities.V1.Model.SqlIntegration do
  @moduledoc """
  Represents the Sql instance integrated with AD.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time sql integration was created. Synthetic field is populated automatically by CCFE.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique name of the sql integration in the form of `projects/{project_id}/locations/global/domains/{domain_name}/sqlIntegrations/{sql_integration}`
  *   `sqlInstance` (*type:* `String.t`, *default:* `nil`) - The full resource name of an integrated sql instance
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the sql integration.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time sql integration was updated. Synthetic field is populated automatically by CCFE.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :sqlInstance => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:name)
  field(:sqlInstance)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ManagedIdentities.V1.Model.SqlIntegration do
  def decode(value, options) do
    GoogleApi.ManagedIdentities.V1.Model.SqlIntegration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ManagedIdentities.V1.Model.SqlIntegration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
