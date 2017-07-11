defmodule Solution do
  
  def two_oldest_ages(ages) do
  	first = List.first ages
    _do_two_oldest_ages(ages, first, first)
  end
  
  defp _do_two_oldest_ages([], second, first) do
    [second, first]
  end

  defp _do_two_oldest_ages([head|tail], second, first) when head > second and head > first do
    IO.puts "#{head} greater than #{first}"

    _do_two_oldest_ages(tail, first, head)
  end
  
  defp _do_two_oldest_ages([head|tail], second, first) when head > second and head < first do   
    IO.puts "#{head} greater than #{second}"
    _do_two_oldest_ages(tail, head, first)
  end
  
  defp _do_two_oldest_ages([head|tail], second, first) when head <= second do
  	IO.puts IO.puts "#{head} not greater than either"
    _do_two_oldest_ages(tail, second, first)
  end
  
end