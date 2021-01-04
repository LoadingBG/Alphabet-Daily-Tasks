#
# Author: Loading BG#7962
#

defmodule Day0101 do
  def nth_even(n), do: 2 * n - 2
  
  def validate_email(email), do: String.match? email, ~r/^.+@.+\..+$/
  
  defp atbash_letter(l) when l in ?a..?z, do: ?z - l + ?a
  defp atbash_letter(l) when l in ?A..?Z, do: ?Z - l + ?A
  defp atbash_letter(l), do: l
  def atbash(s), do: String.to_charlist(s)
                       |> Enum.map(&atbash_letter &1)
                       |> List.to_string
end

IO.inspect Day0101.nth_even(1), label: "nth_even #1"
IO.inspect Day0101.nth_even(2), label: "nth_even #2"
IO.inspect Day0101.nth_even(100), label: "nth_even #3"
IO.puts "---------"
IO.inspect Day0101.validate_email("@gmail.com"), label: "validateEmail #1"
IO.inspect Day0101.validate_email("hello.gmail@com"), label: "validateEmail #2"
IO.inspect Day0101.validate_email("gmail"), label: "validateEmail #3"
IO.inspect Day0101.validate_email("hello@gmail"), label: "validateEmail #4"
IO.inspect Day0101.validate_email("hello@edabit.com"), label: "validateEmail #5"
IO.puts "---------"
IO.inspect Day0101.atbash("apple"), label: "atbash #1"
IO.inspect Day0101.atbash("Hello world!"), label: "atbash #2"
IO.inspect Day0101.atbash("Christmas is the 25th of December"), label: "atbash #3"
