defmodule MyEnum do
	
	def all?(list, func \\ fn x -> x end)

	def all?([], _func) do
		true
	end

	def all?([head| tail], func) do
		if func.(head) do
			all?(tail, func)
		else
			false
		end
	end

	def each([], _func) do
		:ok
	end


	def each([head|tail], func) do
		func.(head)
		each(tail, func)
	end


end