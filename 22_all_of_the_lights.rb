<<<<<<< HEAD
=begin
The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
Each lamp base is a circle with a diameter of 320mm.
What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?
=end

# def circle
#
# end

# plywood

lamps_q = 500

length = 2400
width = 1200
area = length*width #mm

# circle
diameter = 320
square = diameter ** 2

circles_used_sheet = (length/320) * (width/320) +1

sheets_used = (500.0 / circles_used_sheet).ceil

puts "We will need #{sheets_used} sheets"

# puts "#{circles_used_sheet} squares can fit into one sheet."
#
single_circle_waste = square * 0.215

single_sheet_waste = area - (circles_used_sheet * square)

puts single_sheet_waste

total_waste = (single_sheet_waste + single_circle_waste * circles_used_sheet) * sheets_used

puts total_waste
#
# sheets_used = 500/(area/square)
#
cost_p_sheet = 28.47
#
total_cost = sheets_used * cost_p_sheet
#
puts "$#{total_cost}"

puts "Total waste is #{total_waste / 1000000} square meters"
=======
# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm.
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?
>>>>>>> 343ea22cc0547e78c803676deb89c7711cffb211
