defmodule Egcs.Config do
  @v1_base_url "https://www.googleapis.com/customsearch/v1"

  def base_url, do: @v1_base_url
  def api_key, do: get_config_value(:api_key)
  def engine_id, do: get_config_value(:engine_id)

  defp get_config_value(key) do
    Application.get_env(:egcs, key, nil)
  end
end
