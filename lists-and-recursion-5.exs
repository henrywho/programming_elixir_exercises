defmodule MyEnum do
  def all?([], _func), do: true
  def all?([head | tail], func), do: func.(head) && all?(tail, func)

  def each([], _func), do: []
  def each([head | tail], func), do: [func.(head) | each(tail, func)]

  def filter([], _func), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end

  def split(list, count), do: _split([], list, count)
  defp _split(list1, list2, 0), do: {Enum.reverse(list1), list2}
  defp _split(list1, [], _count), do: {Enum.reverse(list1), []}
  defp _split(list1, [head | tail], count), do: _split([head | list1], tail, count-1)

  def take(_list, 0), do: []
  def take([head | tail], count), do: [head | take(tail, count-1)]

end

list = Enum.to_list 1..5

IO.puts "MyEnum.all?"
IO.inspect MyEnum.all?(list, &(&1 < 4))
IO.inspect MyEnum.all?(list, &(&1 < 6))

IO.puts "MyEnum.each"
IO.inspect MyEnum.each(list, &(&1 + 10))

IO.puts "MyEnum.filter"
require Integer
IO.inspect MyEnum.filter(list, &(&1 > 2))
IO.inspect MyEnum.filter(list, &Integer.is_even/1)

IO.puts "MyEnum.split"
IO.inspect MyEnum.split(list, 3)
IO.inspect MyEnum.split(list, 6)
IO.inspect MyEnum.split([], 5)

IO.puts "MyEnum.take"
IO.inspect MyEnum.take(list, 3)
