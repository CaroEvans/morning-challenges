# FizzBuzz
#
# Don't look this one up until you complete it yourself!
# It's a common interview question and there will be plenty
# of spoilers on the interwebs.
#
# This is a trivial question with many simple solutions.
# Try to write the least amount of code as possible.
#
#
# Write a program that prints the numbers from 1 to 100.
# But for multiples of three print “Fizz” instead of the
# number and for the multiples of five print “Buzz”. For
# numbers which are multiples of both three and five
# print “FizzBuzz”.
#
# Difficulty:
# 4/10
#
# Example:
# 1
# 2
# Fizz
# 4
# Buzz
# ...etc
#

#Just to print list of numbers:
# number = 0
# while number != 100 do
#   number += 1
#   if number % 3 == 0 && number % 5 != 0
#   puts "Fizz"
#   elsif number % 5 == 0 && number % 3 != 0
#   puts "Buzz"
# elsif number % 5 == 0 && number % 3 == 0
#   puts "FizzBuzz"
#   else
#   puts number
#   end
# end

def fizz_buzz(max)
  @array = []
  number = 0
  while number != (max) do
    number += 1
    if number % 3 == 0 && number % 5 != 0
    @array.push "Fizz"
    elsif number % 5 == 0 && number % 3 != 0
    @array.push "Buzz"
    elsif number % 5 == 0 && number % 3 == 0
    @array.push "FizzBuzz"
    else
    @array.push number
    end
  end
  return @array[-1]
end

# solutions from GitHub
# def fizz_buzz(max)
#   arr = []
#   (1..max).each do |n|
#     if ((n % 3 == 0) && (n % 5 == 0))
#      arr << "FizzBuzz"
#     elsif ((n % 3 == 0) && (n % 5 != 0))
#      arr << "Fizz"
#     elsif ((n % 5 == 0) && (n % 3 != 0))
#      arr << "Buzz"
#     else
#     arr << n
#     end
#   end
#   return arr[-1]
# end
#
# def fizz_buzz(max)
#   arr = []
#   (1..max).each do |n|
#     text = ""
#     if (n % 3 == 0)
#       text << "Fizz"
#     end
#     if (n % 5 == 0)
#       text << "Buzz"
#     end
#     if !((n % 3 == 0) || (n % 5 == 0))
#       text = n
#     end
#     arr << text
#   end
#   return arr
# end
