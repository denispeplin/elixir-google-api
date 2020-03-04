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

defmodule GoogleApi.CloudTrace.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.CloudTrace.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Sends new traces to Stackdriver Trace or updates existing traces. If the ID
  of a trace that you send matches that of an existing trace, any fields
  in the existing trace and its spans are overwritten by the provided values,
  and any new fields provided are merged with the existing trace data. If the
  ID does not match, a new trace is created.
  In this case, writing traces is not considered an active developer
  method since traces are machine generated.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudTrace.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Required. ID of the Cloud project where the trace data is stored.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.CloudTrace.V1.Model.Traces.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudTrace.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudtrace_projects_patch_traces(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudTrace.V1.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def cloudtrace_projects_patch_traces(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/projects/{projectId}/traces", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudTrace.V1.Model.Empty{}])
  end

  @doc """
  Gets a single trace by its ID.
  In this case, getting for traces is considered an active developer method,
  even though it is technically a read-only method.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudTrace.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Required. ID of the Cloud project where the trace data is stored.
  *   `trace_id` (*type:* `String.t`) - Required. ID of the trace to return.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudTrace.V1.Model.Trace{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudtrace_projects_traces_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.CloudTrace.V1.Model.Trace.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def cloudtrace_projects_traces_get(
        connection,
        project_id,
        trace_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectId}/traces/{traceId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "traceId" => URI.encode(trace_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudTrace.V1.Model.Trace{}])
  end

  @doc """
  Returns of a list of traces that match the specified filter conditions.
  In this case, listing for traces is considered an active developer method,
  even though it is technically a read-only method.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.CloudTrace.V1.Connection.t`) - Connection to server
  *   `project_id` (*type:* `String.t`) - Required. ID of the Cloud project where the trace data is stored.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:endTime` (*type:* `DateTime.t`) - End of the time interval (inclusive) during which the trace data was
          collected from the application.
      *   `:filter` (*type:* `String.t`) - Optional. A filter against labels for the request.

          By default, searches use prefix matching. To specify exact match, prepend
          a plus symbol (`+`) to the search term.
          Multiple terms are ANDed. Syntax:

          *   `root:NAME_PREFIX` or `NAME_PREFIX`: Return traces where any root
              span starts with `NAME_PREFIX`.
          *   `+root:NAME` or `+NAME`: Return traces where any root span's name is
              exactly `NAME`.
          *   `span:NAME_PREFIX`: Return traces where any span starts with
              `NAME_PREFIX`.
          *   `+span:NAME`: Return traces where any span's name is exactly
              `NAME`.
          *   `latency:DURATION`: Return traces whose overall latency is
              greater or equal to than `DURATION`. Accepted units are nanoseconds
              (`ns`), milliseconds (`ms`), and seconds (`s`). Default is `ms`. For
              example, `latency:24ms` returns traces whose overall latency
              is greater than or equal to 24 milliseconds.
          *   `label:LABEL_KEY`: Return all traces containing the specified
              label key (exact match, case-sensitive) regardless of the key:value
              pair's value (including empty values).
          *   `LABEL_KEY:VALUE_PREFIX`: Return all traces containing the specified
              label key (exact match, case-sensitive) whose value starts with
              `VALUE_PREFIX`. Both a key and a value must be specified.
          *   `+LABEL_KEY:VALUE`: Return all traces containing a key:value pair
              exactly matching the specified text. Both a key and a value must be
              specified.
          *   `method:VALUE`: Equivalent to `/http/method:VALUE`.
          *   `url:VALUE`: Equivalent to `/http/url:VALUE`.
      *   `:orderBy` (*type:* `String.t`) - Optional. Field used to sort the returned traces.
          Can be one of the following:

          *   `trace_id`
          *   `name` (`name` field of root span in the trace)
          *   `duration` (difference between `end_time` and `start_time` fields of
               the root span)
          *   `start` (`start_time` field of the root span)

          Descending order can be specified by appending `desc` to the sort field
          (for example, `name desc`).

          Only one sort field is permitted.
      *   `:pageSize` (*type:* `integer()`) - Optional. Maximum number of traces to return. If not specified or <= 0, the
          implementation selects a reasonable value.  The implementation may
          return fewer traces than the requested page size.
      *   `:pageToken` (*type:* `String.t`) - Token identifying the page of results to return. If provided, use the
          value of the `next_page_token` field from a previous request.
      *   `:startTime` (*type:* `DateTime.t`) - Start of the time interval (inclusive) during which the trace data was
          collected from the application.
      *   `:view` (*type:* `String.t`) - Optional. Type of data returned for traces in the list. Default is
          `MINIMAL`.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.CloudTrace.V1.Model.ListTracesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec cloudtrace_projects_traces_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.CloudTrace.V1.Model.ListTracesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, Tesla.Env.t()}
  def cloudtrace_projects_traces_list(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :endTime => :query,
      :filter => :query,
      :orderBy => :query,
      :pageSize => :query,
      :pageToken => :query,
      :startTime => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectId}/traces", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.CloudTrace.V1.Model.ListTracesResponse{}])
  end
end
