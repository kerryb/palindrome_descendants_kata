# Palindrome Descendant

A number may not be a palindrome, but its descendant can be. A number's direct
child is created by summing each pair of adjacent digits to create the digits
of the next number.

For instance, 123312 is not a palindrome, but its next child 363 is, where: 3 =
1 + 2; 6 = 3 + 3; 3 = 1 + 2.

Create a function that returns true if the number itself is a palindrome or any
of its descendants down to 2 digits (a 1-digit number is trivially a
palindrome).

## Examples

```elixir
palindrome_descendant?(13001120) # => true
# 13001120 ➞ 4022 ➞ 44

palindrome_descendant?(23336014) # => true
# 23336014 ➞ 5665

palindrome_descendant?(11) ➞ true
# Number itself is a palindrome.
```

## Notes

Numbers will always have an even number of digits.

If a descendant number has an odd number of digits, it can't be processed any
further so false should be returned (unless the number is a palindrome)

## Example tests

In javascript:

```javascript
Test.assertEquals(palindromeDescendant(11211230), true)
Test.assertEquals(palindromeDescendant(13001120), true)
Test.assertEquals(palindromeDescendant(23336014), true)
Test.assertEquals(palindromeDescendant(11), true)
Test.assertEquals(palindromeDescendant(1122), false)
Test.assertEquals(palindromeDescendant(332233), true)
Test.assertEquals(palindromeDescendant(10210112), true)
Test.assertEquals(palindromeDescendant(9735), false)
Test.assertEquals(palindromeDescendant(97358817), false)
```
