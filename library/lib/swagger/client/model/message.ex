# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Swagger.Client.Model.Message do
  @moduledoc """
  Base type for errors and events
  """

  @derive [Poison.Encoder]
  defstruct [
    :"type"
  ]

  @type t :: %__MODULE__{
    :"type" => String.t
  }
end

defimpl Poison.Decoder, for: Swagger.Client.Model.Message do
  def decode(value, _options) do
    value
  end
end
