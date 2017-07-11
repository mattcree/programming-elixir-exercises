defmodule VowelCount do
  def get_count(str) do
    List.foldl(String.graphemes(str), 0, 
      fn 
        check, count ->  
          cond do
            Enum.member?(["a","e","i","o","u"], check) -> count + 1
            true -> count
          end
      end
    )
  end
end