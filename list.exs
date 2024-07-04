list1 = [1, 2, 3, 4, 5]
list2 = [6, 7, 8, 9, 10]

list3 = list1 ++ list2
IO.puts(list3)

list3 = [{:a, 1}, {:b, 2}]

Keyword.get(list3, :b)
list3[:b]
v = Keyword.values(list3)
# v |> Enum.map(&(v <> &1), fun)

foods = [meat: "sausage", veg: "beans"]
Enum.map(Keyword.values(foods), &("fried " <> &1))
cook = fn heat, foods -> Keyword.values(foods) |> Enum.map(&(heat <> &1)) end
