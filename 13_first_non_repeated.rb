# First Non-repeated
#
# Write a method that will find the first non-repeated
# character in a String. Return false if only repeats
# are found.
#
# *** Whiteboard this first! ***
#
# Pro tip: code quality is a a big deal to potential
# employers. Use smart variable names, keep an eye on
# indentation and be consistent in your decisions
# (e.g. stick to single or double quotes)
#
# Difficulty: ~6/10 (Varies depending on solution. 
# The more optimised the solution, the more difficult
# the algorithm.)
#
# Beast mode: can you return on the first non-repeat,
# without checking every other letter?
#
# Beat mode++: can you maintain linear time?
#
# Example:
# firstNonRepeat('aaaabbbcccdeeefgh') -> 'd'
# firstNonRepeat('wwwhhhggge') -> 'e'
# firstNonRepeat('awwwhhhggge') -> 'a'
# firstNonRepeat('wwwhhhggg') -> false
#
# Check your solution by running the tests:
# ruby tests/13_first_non_repeated_test.rb
#

# def firstNonRepeat (string)
#   chars = []
#   repeated_chars = []
#   string.chars.each do |char|
#     chars.include?(char) ? repeated_chars.push(char) : chars.push(char)
#   end
#   non_repeated = chars - repeated_chars
#   non_repeated[0] ? non_repeated[0] : false
# end

# Beast mode: can you return on the first non-repeat,
# without checking every other letter?
def firstNonRepeat (string)
  string.each_index do |i|
    char = string[i]
    return char if (string[i-1] != char) && (string[i+1] != char)
    false
  end
end

firstNonRepeat('aaaabbbcccdeeefgh')
