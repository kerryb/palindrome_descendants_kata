defmodule PalindromeDescendantTest do
  use ExUnit.Case
  doctest PalindromeDescendant

  import PalindromeDescendant

  test "reports palindromic numbers as true" do
    assert palindrome_descendant?(11)
  end
end
