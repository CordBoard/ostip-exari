# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.ContactStatusChange do
  @moduledoc """
  The state of a contact on an endpoint has changed.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"endpoint",
    :"contact_info"
  ]

  @type t :: %__MODULE__{
    :"endpoint" => Endpoint,
    :"contact_info" => ContactInfo
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.ContactStatusChange do
  import Swagger.Client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"endpoint", :struct, Swagger.Client.Model.Endpoint, options)
    |> deserialize(:"contact_info", :struct, Swagger.Client.Model.ContactInfo, options)
  end
end
