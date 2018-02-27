# OstipExari

**TODO: Add description**
** In order to keep up to date, run swagger-codegen against latest Asterisk **

`swagger-codegen generate -i http://192.168.64.2:8088/ari/api-docs/resources.json -l elixir -o /tmp/test/ -a "Authorization: Basic YXN0ZXJpc2s6YXN0ZXJpc2s="`

`Authorization: Basic YXN0ZXJpc2s6YXN0ZXJpc2s=` is asterisk:asterisk base 64 encoded. If you use your own asterisk instance then correct the command above with your URL and auth string.

** and modify resources.json to change base-path to ./


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `ostip_exari` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:ostip_exari, "~> 0.1.0"}]
    end
    ```

  2. Ensure `ostip_exari` is started before your application:

    ```elixir
    def application do
      [applications: [:ostip_exari]]
    end
    ```

