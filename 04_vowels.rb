# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

def vowels(string)
  new_array = [ ]
  string.each_char do |char|
    new_array.push(char) if ['a', 'e', 'i', 'o', 'u'].include?(char.downcase)
  end
  new_array
end
