defmodule PalindromeDescendantTest do
  use ExUnit.Case
  doctest PalindromeDescendant

  import PalindromeDescendant

  test "reports palindromic numbers as true" do
    assert palindrome_descendant?(11)
  end

  test "reports numbers that don't reduce to a palindrome as false" do
    refute palindrome_descendant?(1122)
  end
end
