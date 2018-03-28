#
# Prep for interviews: Don't Google (yeah, I said it).
# Whiteboard first. You don't need to know perfect syntax.
# Having a rough idea on how to approach the problem is just
# as good in an interview.
#
# Exes and Ohs
#
# Check to see if a string has the same amount
# of 'x's and 'o's. The method must return a boolean
# and be case insensitive.
#
# Examples:
# ExesAndOhs("ooxx") => true
# ExesAndOhs("xooxx") => false
# ExesAndOhs("sxoowxxoq") => true
# ExesAndOhs("oOxXxoXo") => true
# ExesAndOhs("oOxXxoX") => false
# ExesAndOhs("zpzpzpp") => true
#
# Check your answers by running the tests:
# ruby tests/15_exes_and_ohs_test.rb
#

#first, longer way:
# def ExesAndOhs(string)
#   one = 0
#   two = 0
#   string.each_char do |c|
#     if c == 'x' || c == 'X'
#       one += 1
#     elsif c == 'o' || c == 'O'
#       two += 1
#     end
#   end
#   if one == two
#     return true
#   else
#     return false
#   end
# end

def ExesAndOhs(string)
  xs = 0
  os = 0
  string.each_char do |c|
    case c.downcase
    when 'x'
      xs += 1
    when 'o'
      os += 1
    end
  end
  return xs == os ? true : false
end
