defmodule EgcsTest do
  use ExUnit.Case
  doctest Egcs

  test "is ok" do
    assert Egcs.run() == :ok
  end
end
