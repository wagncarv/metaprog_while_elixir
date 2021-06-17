defmodule WhileTest do
  use ExUnit.Case
  doctest While

  test "greets the world" do
    assert While.hello() == :world
  end
end
