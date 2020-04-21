defmodule PalindromeDescendant do
  require Integer

  def palindrome_descendant?(number) do
    number
    |> get_digits()
    |> descendants()
    |> any_palindromes?()
  end

  def get_digits(n), do: get_digits([], n)
  defp get_digits(digits, n) when n < 10, do: [n | digits]
  defp get_digits(digits, n), do: get_digits([Integer.mod(n, 10) | digits], div(n, 10))

  def descendants(digits), do: Stream.unfold(digits, &descendant/1)

  defp descendant(digits) do
    cond do
      Integer.is_odd(length(digits)) -> nil
      Enum.any?(digits, &(&1 > 9)) -> nil
      true -> {digits, add_pairs(digits)}
    end
  end

  defp add_pairs(digits), do: digits |> Enum.chunk_every(2) |> Enum.map(&Enum.sum/1)

  defp any_palindromes?(stream), do: Enum.any?(stream, &palindrome?/1)

  def palindrome?([_]), do: false
  def palindrome?(digits), do: digits == Enum.reverse(digits)
end
