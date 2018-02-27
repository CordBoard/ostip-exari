# Swagger.Client

** In order to keep up to date, run swagger-codegen against latest Asterisk **

`swagger-codegen generate -i http://192.168.64.2:8088/ari/api-docs/resources.json -l elixir -o /tmp/test/ -a "Authorization: Basic YXN0ZXJpc2s6YXN0ZXJpc2s="`

`Authorization: Basic YXN0ZXJpc2s6YXN0ZXJpc2s=` is asterisk:asterisk base 64 encoded. If you use your own asterisk instance then correct the command above with your URL and auth string.

**Nothing in this repo is manually edited other than the supporting docker files and asterisk confs to enable swagger-codegen to do its thing, or else anything specified in .swagger-codegen-ignore**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `swagger/client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:swagger/client, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/swagger/client](https://hexdocs.pm/swagger/client).
