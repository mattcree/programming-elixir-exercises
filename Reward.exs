defmodule Reward do
  def bonus_time(salary, bonus) do
  	cond do
  	  bonus -> "$" <> Integer.to_string salary * 10
  	  true -> "$" <> Integer.to_string salary
  	end
  end
end