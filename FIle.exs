{:ok, my_file} = File.open("Test.txt")

defmodule FileHandler do
  def open_file(path) do
    case File.open(path) do
      {:ok, file} ->
        IO.puts("File opened successfully")
        file

      {:error, reason} ->
        IO.inspect(reason)
        nil
    end
  end
end

FileHandler.open_file("Test.txt")
