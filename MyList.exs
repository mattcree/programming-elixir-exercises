defmodule MyList do

	def mapsum(list, func) do
		Enum.map(list, func) |> Enum.sum
	end

	def max(list) do
		List.foldl(list, 0, 
			fn 
				check, big when check > big -> check 
				check, big -> big 
			end)
	end

	def caesar(list, n) do
		Enum.map(list, 
			fn
				current when current + n > 122 -> 96 + rem current + n, 122
				current -> current + n 
			end)
	end

end
