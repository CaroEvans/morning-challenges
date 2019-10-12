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

def reverse (string)
  array_of_chars = string.chars
  new_array = []
  array_of_chars.each do |char|
    new_array.insert(0, char)
  end
  return "#{new_array.join}"
end

reverse('hello')