defmodule FizzBuzz do
  def fizzbuzz(n) do
    Enum.map(1..n, 
      fn
        current when rem(current, 3) == 0 and rem(current, 5) == 0 -> "FizzBuzz"
        current when rem(current, 5) == 0 -> "Buzz"
        current when rem(current, 3) == 0 -> "Fizz" 
        current -> current
      end
    )
  end
end