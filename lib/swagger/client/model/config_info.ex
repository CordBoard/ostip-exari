# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.ConfigInfo do
  @moduledoc """
  Info about Asterisk configuration
  """

  @derive [Poison.Encoder]
  defstruct [
    :"name",
    :"default_language",
    :"max_channels",
    :"max_open_files",
    :"max_load",
    :"setid"
  ]

  @type t :: %__MODULE__{
    :"name" => String.t,
    :"default_language" => String.t,
    :"max_channels" => Int,
    :"max_open_files" => Int,
    :"max_load" => Float,
    :"setid" => SetId
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.ConfigInfo do
  import Swagger.Client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"max_channels", :struct, Swagger.Client.Model.Int, options)
    |> deserialize(:"max_open_files", :struct, Swagger.Client.Model.Int, options)
    |> deserialize(:"setid", :struct, Swagger.Client.Model.SetId, options)
  end
end

