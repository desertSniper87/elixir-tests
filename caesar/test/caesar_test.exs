defmodule CaesarTest do
  use ExUnit.Case
  doctest Caesar

  test "greets the world" do
    assert Caesar.hello() == :world
  end

  test "the truth" do
    assert 1 + 1 == 2
  end
end
