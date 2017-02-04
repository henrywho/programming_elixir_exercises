defmodule MyEnum do
  def span(to, to), do: [to]
  def span(from, to), do: [from | span(from+1, to)]

  # return false if any do not meet predicate
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


  def flatten([]), do: []
  def flatten([head | tail])
    when is_list(head),
    do: [flatten(head), flatten(tail)]
  def flatten([head | tail]),
    do: [head | flatten(tail)]
  

end
IO.inspect MyEnum.flatten([1, [2, 3, [4]], 5, [[[6]]]])
