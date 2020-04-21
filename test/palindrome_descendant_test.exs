defmodule PalindromeDescendantTest do
  use ExUnit.Case
  doctest PalindromeDescendant

  import PalindromeDescendant

  describe "PalindromeDescendant.palindrome_descendant?/1" do
    test "reports palindromic numbers as true" do
      assert palindrome_descendant?(11)
    end

    test "reports numbers with palindromic descendants as true" do
      assert palindrome_descendant?(13_001_120)
    end

    test "reports numbers that don't reduce to a palindrome as false" do
      refute palindrome_descendant?(1122)
    end
  end

  describe "PalindromeDescendant.get_digits/1" do
    test "returns a list of a number's digits" do
      assert get_digits(1234) == [1, 2, 3, 4]
    end
  end

  describe "PalindromeDescendant.descendants/1" do
    test "returns a stream of descendants (including the original) until it reaches two digits" do
      assert [1, 1, 2, 1, 1, 2, 3, 0] |> descendants |> Enum.to_list() == [
               [1, 1, 2, 1, 1, 2, 3, 0],
               [2, 3, 3, 3],
               [5, 6]
             ]
    end
  end

  describe "PalindromeDescendant.palindrome?/1" do
    test "reports palindromic lists of digits as true" do
      assert palindrome?([1, 2, 3, 2, 1])
    end

    test "reports non-palindromic lists of digits as false" do
      refute palindrome?([1, 2, 3, 1])
    end

    test "reports single-digit lists as false" do
      refute palindrome?([1])
    end
  end
end
