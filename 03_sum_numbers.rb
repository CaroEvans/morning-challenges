# Sum Numbers
#
# Write a method that will take an array of numbers,
# and return their sum.
#
# Difficulty:
# 3/10
#
# Example:
# sum_numbers([1,1,1]) should return 3
# sum_numbers([5,2,100,0,10]) should return 117
#
# Check your solution by running the tests:
# ruby tests/03_sum_numbers_test.rb
#

# (numbers).inject do |sum, num|
#   sum + num
# end
## inject and reduce are aliases

def sum_numbers(numbers)
  numbers.reduce(:+)
end