# Reverse a string
#
# Write a method that will take a string
# as input, and return a new string with
# the same letters in reverse order.
#
# Difficulty:
# 1/10
#
# Example:
# reverse("hello") should return "olleh"
#
# Check your solution by running the tests:
# ruby tests/01_reverse_test.rb
#

def reverse(string)
  new_string = ''
  string.each_char do |char|
    new_string = new_string.insert(0, char)
  end
  return new_string
end