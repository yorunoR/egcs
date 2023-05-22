defmodule Egcs.Client do
  alias Egcs.Config

  def new(opts \\ []) do
    base_url = opts |> Keyword.get(:base_url, Config.base_url())
    receive_timeout = opts |> Keyword.get(:receive_timeout, 30_000)

    Req.new(
      base_url: base_url,
      receive_timeout: receive_timeout
    )
  end
end
