defmodule Cook do
  def cook(food \\ "brussels sprout", type \\ "boiled", veg) do
    "Tasty #{food} with #{type} #{veg}"
  end
end

IO.inspect(Cook.cook("brokoli"))
