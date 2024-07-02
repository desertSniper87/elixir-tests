w = fn x -> x == 88 end
IO.puts(w.(88))

x = 88
y = "hello"
z = true

case x do
  88 -> IO.puts("X is 88")
  _ -> nil
end

case y do
  "hello" -> IO.puts("Y is 'hello'")
  _ -> nil
end

case z do
  true -> IO.puts("Z is true")
  _ -> nil
end

defmodule ElixirTest do
  def test_pattern_matching(list) do
    case list do
      [] ->
        IO.puts("List is empty")

      [head | tail] ->
        IO.puts("Head: #{inspect(head)}")
        IO.puts("Tail: #{inspect(tail)}")
    end
  end
end

ElixirTest.test_pattern_matching([1, 2, 4, 5, 7])
