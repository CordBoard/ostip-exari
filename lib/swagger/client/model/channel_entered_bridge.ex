# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.ChannelEnteredBridge do
  @moduledoc """
  Notification that a channel has entered a bridge.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bridge",
    :"channel"
  ]

  @type t :: %__MODULE__{
    :"bridge" => Bridge,
    :"channel" => Channel
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.ChannelEnteredBridge do
  import Swagger.Client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bridge", :struct, Swagger.Client.Model.Bridge, options)
    |> deserialize(:"channel", :struct, Swagger.Client.Model.Channel, options)
  end
end

