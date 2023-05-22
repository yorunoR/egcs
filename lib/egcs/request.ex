defmodule Egcs.Request do
  alias Egcs.Config

  # opts
  # https://developers.google.com/custom-search/v1/reference/rest/v1/cse/list
  def search(client, q, opts \\ []) do
    params = [key: Config.api_key(), cx: Config.engine_id(), q: q] ++ opts
    Req.get!(client, params: params)
  end
end
