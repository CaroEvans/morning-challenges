# Palindrome
#
# Write a method that will take a word as a string and
# return a boolean indicating whether or not the word
# is a palindrome.
#
# Difficulty:
# 3/10
#
# Example:
# palindrome("hello") should return false
# palindrome("racecar") should return true
#
# Check your solution by running the tests:
# ruby tests/06_palindrome_test.rb
#

def palindrome (string)
  array_of_chars = string.chars
  shift_index_amount = array_of_chars.length - 1
  new_array = []
  array_of_chars.each_index do |index|
    new_index = shift_index_amount - index
    new_array[new_index] = array_of_chars[index]
  end 

  return string == new_array.join
end

palindrome('racecar')