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

<<<<<<< HEAD
def nthFib(n)
fib = [0,1]
x = 0
  while x < n
    fib.push(fib[-1] + fib[-2])
    x += 1
  end
fib[-2]
end
puts nthFib(6)
=======
def nthFibonacci (n)
  # Your code here    
end
>>>>>>> 19adf5165ac13225621db205fbc4fee641b9b3fe
