hello = fn p -> "hello #{p}" end

hello.("Elixir")

hello = fn -> "hello" end
hello.()
