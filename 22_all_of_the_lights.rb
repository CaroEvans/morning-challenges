# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm.
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?

# def circle
#
# end

# plywood
length = 2400
width = 1200
puts area = length*width


# circle
diameter = 320
square = diameter ** 2
circle_wastage = square - (square*0.215)
plywood_waste = (sheets_used * area) - (sheets_used)

sheets_used = 500/(area/square)
cost_p_sheet = 28.47
total_cost = sheets_used * cost_p_sheet

puts "$#{total_cost}"

# total_waste = 500*circle_wastage +
