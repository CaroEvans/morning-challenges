# In Array
#
# Write a method that will take two arguments: a string and an array.
# Return a boolean indicating whether or not the string
# is found in the array.
#
# Difficulty:
# 2/10
#
# Example:
# in_array("hello", ["hi", "howdy", "hello"]) should return true
# in_array("drake", ["jayz", "kanye", "yachty"]) should return false
#
# Check your solution by running the tests:
# ruby tests/07_in_array.rb
#
#Don't use any helpers other than .each
#Try writing it on a whiteboard or paper first

<<<<<<< HEAD
  # def in_array (needle, haystack)
  #   haystack.each { |check| return true if needle == check}
  #   false
  # end

def in_array (needle, haystack)
  if haystack.include?(needle)
    return true
  else
    return false
  end
=======
def in_array (needle, haystack)
#your code here
>>>>>>> 733edf5808e3b9323de492faef9c96f846fbfba7
end
