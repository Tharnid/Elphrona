defmodule HangmansTest do
  use ExUnit.Case
  doctest Hangmans

  test "greets the world" do
    assert Hangmans.hello() == :world
  end
end
