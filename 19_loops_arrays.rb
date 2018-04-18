=begin
- create a well named variable that contains the amount of time it took you to get to class
- create a complete sentence  that lets us know how you got to class and how long it took
- print this complete sentence

you are working at a bar where you have a current backlog of drinks to make:
3 party parrot cocktails
2 party parrot waters
and
6 party parrot beers

write a program that asks the customer for their order.
if they order a party parrot cocktail, add one to the number of party parrot cocktails you need to make,
if they order a party parrot water, add one to the number of party parrot waters you need to make,
if they order a party parrot beer, add one to the number of party parrot beers you need to pour

print the final drinks order so you know what to make

****
cocktails sell for $22, and cost $8 to make
beer sell for $12, and cost $3 to pour
water sell for $6, and cost $0.15 to make

print out the total profit for the orders you have
=end

travel_time = 30

puts "It took me #{travel_time} minutes to get to class and I was driven."

puts "What is your order? Enter 1 for a cocktail, 2 for a water and 3 for a beer"

order = 0
a = gets.chomp
if a == 1 || 2 || 3
  order = a
else
  puts "Please enter one of the options provided"
end

if order == 1
  drink = cocktail
elsif order == 2
  drink = water
else order == 3
  drink = beer
end

puts "Final drinks order is #{drink}"
