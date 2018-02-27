# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.Playback do
  @moduledoc """
  Object representing the playback of media to a channel
  """

  @derive [Poison.Encoder]
  defstruct [
    :"id",
    :"media_uri",
    :"next_media_uri",
    :"target_uri",
    :"language",
    :"state"
  ]

  @type t :: %__MODULE__{
    :"id" => String.t,
    :"media_uri" => String.t,
    :"next_media_uri" => String.t,
    :"target_uri" => String.t,
    :"language" => String.t,
    :"state" => String.t
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.Playback do
  def decode(value, _options) do
    value
  end
end

