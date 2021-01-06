#
# Author: Loading BG#7962
#

defmodule Day0104 do
  defp split([_]),  do: []
  defp split([x, y]), do: [[x, y]]
  defp split([x, y | rest]), do: [[x, y]] ++ split([y] ++ rest)
  
  def check(nums) do
    sum = split(nums)
            |> Enum.map(fn [f, s | _] -> f - s end)
            |> Enum.sum
    cond do
      sum == length(nums) - 1    -> "decreasing"
      sum == -(length(nums) - 1) -> "increasing"
      :else                      -> "neither"
    end
  end
  
  defp area([x1, y1], [x2, y2], [x3, y3]), do: abs((x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2)
  def within_tri?([p1, p2, p3], p), do: area(p1, p2, p3) == area(p1, p2, p) + area(p1, p3, p) + area(p2, p3, p)
  
  defp color(<<l::utf8, n::utf8>>), do: rem(l, 2) == rem(n, 2)
  def bishop(start, finish, _), do: color(start) == color(finish)
end

IO.inspect Day0104.check([1, 2, 3]), label: "check #1"
IO.inspect Day0104.check([3, 2, 1]), label: "check #2"
IO.inspect Day0104.check([1, 2, 1]), label: "check #3"
IO.puts "---------"
IO.inspect Day0104.within_tri?([[1, 4], [5, 6], [6, 1]], [4, 5]), label: "withinTriangle #1"
IO.inspect Day0104.within_tri?([[1, 4], [5, 6], [6, 1]], [3, 2]), label: "withinTriangle #2"
IO.puts "---------"
IO.inspect Day0104.bishop("a1", "b4", 2), label: "bishop #1"
IO.inspect Day0104.bishop("a1", "b5", 5), label: "bishop #2"
IO.inspect Day0104.bishop("f1", "f1", 0), label: "bishop #3"
