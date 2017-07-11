defmodule MyEnum do
	
	def all?(list, func \\ fn x -> x end)

	def all?([], _func) do
		true
	end

	def all?([head|tail], func) do
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

	def filter(list, func) do
		_do_filter(list, func, [])
	end

	defp _do_filter([], _func, list) do
		Enum.reverse list
	end

	defp _do_filter([head|tail], func, list) do
		if func.(head) do
			_do_filter(tail, func, [head|list])
		else
			_do_filter(tail, func, list)
		end
	end

	def take(_list, 0) do
		[]
	end

	def take([head|tail], count) when count >= 1 do
		_do_take(tail, count-1, [head], :positive)
	end

	def take(list, count) when count <= -1 do
		[head|tail] = Enum.reverse list
		_do_take(tail, -count-1, [head], :negative)
	end

	defp _do_take(list, count, taken, direction) when count == 0 or list == [] do
		if direction === :positive do
			Enum.reverse taken
		else
			taken
		end
	end

	defp _do_take([head|tail], count, taken, direction) do
		_do_take(tail, count-1, [head|taken], direction)
	end

end