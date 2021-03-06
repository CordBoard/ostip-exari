# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Connection do
  @moduledoc """
  Handle Tesla connections for Swagger.Client.
  """

  use Tesla

  # Add any middleware here (authentication)
  plug Tesla.Middleware.BaseUrl, "http://192.168.64.2:8088/ari"
  plug Tesla.Middleware.Headers, %{"User-Agent" => "Elixir"}
  plug Tesla.Middleware.EncodeJson

  @doc """
  Configure an authless client connection

  # Returns

  Tesla.Env.client
  """
  @spec new() :: Tesla.Env.client
  def new do
    Tesla.build_client([])
  end
end
