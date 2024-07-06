IO.inspect(Enum.reduce([1, 2, 3], 0, fn x, acc -> acc + x * x end))
