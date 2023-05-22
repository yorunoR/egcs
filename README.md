# Egcs

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `egcs` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:egcs, git: "https://github.com/yorunoR/egcs.git", branch: "main"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/egcs>.

## Setup

Prepare configuration file `config/config.exs`.

```elixir
import Config

config :egcs,
  api_key: "your-api-key",
  engine_id: "your-custom-search-engine-id"
```

## Example

### Search

```elixir
Egcs.Client.new()
|> Egcs.Request.search("マイクロソフト", num: 3, lr: "lang_ja")
|> Egcs.Response.dig(["items", 0, "snippet"])
```
