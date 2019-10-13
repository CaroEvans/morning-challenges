# nthFibonacci
#
# A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each
# subsequent number is the sum of the previous two.
#
# For example, the first seven Fibonacci numbers are: 0 1 1 2 3 5 8
#
# Write a method that will return the nth number of the sequence.
#
# The syntax is easy, getting your head around the algorithm is the challenge.
# Write the sequence on a piece of paper first and think about the steps
# you take for each number. Translate this to pseudocode and then to ruby.
#
# Difficulty:
# 6/10
#
# Example:
# nthFibonacci(0) -> 0
# nthFibonacci(3) -> 2
# nthFibonacci(6) -> 8
#
# Check your solution by running the tests:
# ruby tests/11_fibonacci_test.rb
#

# 0 1 1 2 3 5 8
# n = 6
# 0..6


def nthFibonacci(n)
  fib_array = []
  (n+1).times do |add_fib|
    fib_array.push(0) and next if fib_array.empty?
    fib_array.push(1) and next if fib_array.length == 1
    fib_array. push(fib_array[-2] + fib_array[-1])
  end
  return fib_array[-1]
end

nthFibonacci(6)