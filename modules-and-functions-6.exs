defmodule Chop do
  def guess(actual, actual..actual), do: actual
  def guess(actual, low..high) do
    guess = div(low+high, 2)
    IO.puts "Is it #{guess}?"
    compare_and_guess(actual, guess, low..high)
  end

  defp compare_and_guess(actual, actual, _),
    do: guess(actual, actual..actual)
  defp compare_and_guess(actual, guess, _low..high)
    when actual > guess,
    do: guess(actual, guess..high)
  defp compare_and_guess(actual, guess, low.._high)
    when actual < guess,
    do: guess(actual, low..guess)
end
