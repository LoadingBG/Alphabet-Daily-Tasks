#
# Author: Loading BG#7962
#

defmodule Day0106 do
  def average_char(string), do: string
                                  |> String.to_charlist
                                  |> List.foldl(0, &(&1 + &2))
                                  |> div(String.length(string))
                                  |> List.wrap
                                  |> List.to_string
  
  def space(words), do: words
                          |> String.replace(~r/([A-Z])/, " \\1")
                          |> String.trim
                          |> String.capitalize
  
  def sort(sentence), do: sentence
                            |> String.split(" ")
                            |> Enum.sort_by(&Day0106.average_char/1)
                            |> Enum.join(" ")
end

IO.inspect Day0106.average_char("Hello"), label: "averageChar #1"
IO.inspect Day0106.average_char("Yes"), label: "averageChar #2"
IO.inspect Day0106.average_char("aaaa"), label: "averageChar #3"
IO.puts "--------"
IO.inspect Day0106.space("HelloWorld!"), label: "space #1"
IO.inspect Day0106.space("HowAreYou?"), label: "space #2"
IO.inspect Day0106.space("Example"), label: "space #3"
IO.inspect Day0106.space("Simple,Right?"), label: "space #4"
IO.puts "--------"
IO.inspect Day0106.sort("Hello Yes aaaa"), label: "sort #1"
