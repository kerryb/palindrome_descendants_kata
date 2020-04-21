defmodule PalindromeDescendant do
  def palindrome_descendant?(number) do
    number
    |> get_digits()
    |> palindrome?()
  end

  defp get_digits(n) when n < 10, do: [n]
  defp get_digits(n), do: [Integer.mod(n, 10) | get_digits(div(n, 10))]

  defp palindrome?(digits), do: digits == Enum.reverse(digits)
end
