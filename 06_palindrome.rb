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

# long way:
def palindrome (string)
  result = []
  string.each_char do |char|
    result.unshift(char)
  end
  string.chars == result ? true : false
end

# def palindrome (string)
# string.reverse == string ? true : false
# end
