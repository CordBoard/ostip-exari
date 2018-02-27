# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Api.ApiDocseventsFormat do
  @moduledoc """
  API calls for all endpoints tagged `ApiDocseventsFormat`.
  """

  alias Swagger.Client.Connection
  import Swagger.Client.RequestBuilder


  @doc """
  WebSocket connection for events.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - app ([String.t]): Applications to subscribe to.
  - opts (KeywordList): [optional] Optional parameters
    - :subscribe_all (boolean()): Subscribe to all Asterisk events. If provided, the applications listed will be subscribed to all events, effectively disabling the application specific subscriptions. Default is &#39;false&#39;.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec event_websocket(Tesla.Env.client, list(String.t), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def event_websocket(connection, app, opts \\ []) do
    optional_params = %{
      :"subscribeAll" => :query
    }
    %{}
    |> method(:get)
    |> url("/events")
    |> add_param(:query, :"app", app)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Generate a user event.

  ## Parameters

  - connection (Swagger.Client.Connection): Connection to server
  - event_name (String.t): Event name
  - application (String.t): The name of the application that will receive this event
  - opts (KeywordList): [optional] Optional parameters
    - :source ([String.t]): URI for event source (channel:{channelId}, bridge:{bridgeId}, endpoint:{tech}/{resource}, deviceState:{deviceName}
    - :variables (Containers): The \&quot;variables\&quot; key in the body object holds custom key/value pairs to add to the user event. Ex. { \&quot;variables\&quot;: { \&quot;key\&quot;: \&quot;value\&quot; } }

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec user_event(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def user_event(connection, event_name, application, opts \\ []) do
    optional_params = %{
      :"source" => :query,
      :"variables" => :body
    }
    %{}
    |> method(:post)
    |> url("/events/user/#{event_name}")
    |> add_param(:query, :"application", application)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end
end
