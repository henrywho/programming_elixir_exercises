fizz_word = fn
  0, 0, c -> "FizzBuzz"
  0, b, c -> "Fizz"
  a, 0, c -> "Buzz"
  a, b, c -> c
end

IO.puts fizz_word.(0, 0, 0)
IO.puts fizz_word.(0, 1, 0)
IO.puts fizz_word.(1, 0, 0)
IO.puts fizz_word.(1, 1, 0)
