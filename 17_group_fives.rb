=begin 1. Write a method (divisible_by_five) that takes one argument, a number,
 and that returns true if the number is divisible by 5, and false otherwise.

2. Write another method (group_fives) that takes an array (of numbers) as an argument.
This method will use your first method to return two arrays, within one array
(an array of arrays) the first array contains the numbers that are divisible
by 5, and the other of the rest of the numbers. For example, if you pass the
second method the array [9, 4, 25, 3, 5, 30, 2, 8, 10, 100] it would return
[[25, 5, 30, 10, 100],[9, 4, 3, 2, 8]].

Let the tests help you :)
ruby tests/17_group_fives_test.rb
=end
def divisible_by_five(num)
  num % 5 == 0 ? true : false
end
def group_fives(num_array)
  divisable_by_5 = []
  not_divisable_by_5 = []
  num_array.each do |num|
    divisible_by_five(num) ? divisable_by_5.push(num) : not_divisable_by_5.push(num)
  end
  array = [divisable_by_5, not_divisable_by_5]
end

