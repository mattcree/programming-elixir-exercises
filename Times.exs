defmodule Times do
	def double(number) do
		number * 2
	end

	def triple(number) do
		number * 3
	end

	def quadruple(number) do
		double(double(number))
	end

end

defmodule Factorial do
	def of(0), do: 1
	def of(n), do: n * of(n-1)
end

defmodule Chop do

	def guess(actual, low..high) do 
		guess = div low+high, 2
		IO.puts "Is it #{guess}?"
		_do_guess(guess, actual, low..high)
	end

	defp _do_guess(guess, actual, low..high) do
		cond do
			guess > actual -> guess actual, low..guess
			guess < actual -> guess actual, guess..high
			guess === actual -> guess
		end
	end

end