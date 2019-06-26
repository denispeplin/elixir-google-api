# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Discovery.V1.Model.JsonSchema do
  @moduledoc """


  ## Attributes

  *   `$ref` (*type:* `String.t`, *default:* `nil`) - A reference to another schema. The value of this property is the "id" of another schema.
  *   `additionalProperties` (*type:* `GoogleApi.Discovery.V1.Model.JsonSchema.t`, *default:* `nil`) - If this is a schema for an object, this property is the schema for any additional properties with dynamic keys on this object.
  *   `annotations` (*type:* `GoogleApi.Discovery.V1.Model.JsonSchemaAnnotations.t`, *default:* `nil`) - Additional information about this property.
  *   `default` (*type:* `String.t`, *default:* `nil`) - The default value of this property (if one exists).
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of this object.
  *   `enum` (*type:* `list(String.t)`, *default:* `nil`) - Values this parameter may take (if it is an enum).
  *   `enumDescriptions` (*type:* `list(String.t)`, *default:* `nil`) - The descriptions for the enums. Each position maps to the corresponding value in the "enum" array.
  *   `format` (*type:* `String.t`, *default:* `nil`) - An additional regular expression or key that helps constrain the value. For more details see: http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.23
  *   `id` (*type:* `String.t`, *default:* `nil`) - Unique identifier for this schema.
  *   `items` (*type:* `GoogleApi.Discovery.V1.Model.JsonSchema.t`, *default:* `nil`) - If this is a schema for an array, this property is the schema for each element in the array.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Whether this parameter goes in the query or the path for REST requests.
  *   `maximum` (*type:* `String.t`, *default:* `nil`) - The maximum value of this parameter.
  *   `minimum` (*type:* `String.t`, *default:* `nil`) - The minimum value of this parameter.
  *   `pattern` (*type:* `String.t`, *default:* `nil`) - The regular expression this parameter must conform to. Uses Java 6 regex format: http://docs.oracle.com/javase/6/docs/api/java/util/regex/Pattern.html
  *   `properties` (*type:* `%{optional(String.t) => GoogleApi.Discovery.V1.Model.JsonSchema.t}`, *default:* `nil`) - If this is a schema for an object, list the schema for each property of this object.
  *   `readOnly` (*type:* `boolean()`, *default:* `nil`) - The value is read-only, generated by the service. The value cannot be modified by the client. If the value is included in a POST, PUT, or PATCH request, it is ignored by the service.
  *   `repeated` (*type:* `boolean()`, *default:* `nil`) - Whether this parameter may appear multiple times.
  *   `required` (*type:* `boolean()`, *default:* `nil`) - Whether the parameter is required.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The value type for this schema. A list of values can be found here: http://tools.ietf.org/html/draft-zyp-json-schema-03#section-5.1
  *   `variant` (*type:* `GoogleApi.Discovery.V1.Model.JsonSchemaVariant.t`, *default:* `nil`) - In a variant data type, the value of one property is used to determine how to interpret the entire entity. Its value must exist in a map of descriminant values to schema names.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :"$ref" => String.t(),
          :additionalProperties => GoogleApi.Discovery.V1.Model.JsonSchema.t(),
          :annotations => GoogleApi.Discovery.V1.Model.JsonSchemaAnnotations.t(),
          :default => String.t(),
          :description => String.t(),
          :enum => list(String.t()),
          :enumDescriptions => list(String.t()),
          :format => String.t(),
          :id => String.t(),
          :items => GoogleApi.Discovery.V1.Model.JsonSchema.t(),
          :location => String.t(),
          :maximum => String.t(),
          :minimum => String.t(),
          :pattern => String.t(),
          :properties => %{optional(String.t()) => GoogleApi.Discovery.V1.Model.JsonSchema.t()},
          :readOnly => boolean(),
          :repeated => boolean(),
          :required => boolean(),
          :type => String.t(),
          :variant => GoogleApi.Discovery.V1.Model.JsonSchemaVariant.t()
        }

  field(:"$ref")
  field(:additionalProperties, as: GoogleApi.Discovery.V1.Model.JsonSchema)
  field(:annotations, as: GoogleApi.Discovery.V1.Model.JsonSchemaAnnotations)
  field(:default)
  field(:description)
  field(:enum, type: :list)
  field(:enumDescriptions, type: :list)
  field(:format)
  field(:id)
  field(:items, as: GoogleApi.Discovery.V1.Model.JsonSchema)
  field(:location)
  field(:maximum)
  field(:minimum)
  field(:pattern)
  field(:properties, as: GoogleApi.Discovery.V1.Model.JsonSchema, type: :map)
  field(:readOnly)
  field(:repeated)
  field(:required)
  field(:type)
  field(:variant, as: GoogleApi.Discovery.V1.Model.JsonSchemaVariant)
end

defimpl Poison.Decoder, for: GoogleApi.Discovery.V1.Model.JsonSchema do
  def decode(value, options) do
    GoogleApi.Discovery.V1.Model.JsonSchema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Discovery.V1.Model.JsonSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
