# In Array Advanced
#
# Don't use any array helper methods except for .each
#
# This is the same as the last challenge with one improvement.
# in_array_advanced takes an additional boolean argument 'strict'.
# If strict is true, in_array should care about leTteR CasIng.
# If strict is false, in_array should return true for any match.
#
# Difficulty:
# 4/10
#
# Example:
# in_array("HeLLo", ["hi", "howdy", "HeLLo"], true) should return true
# in_array("DrAkE", ["jayz", "kanye", "drake"], false) should return true
# in_array("DrAkE", ["jayz", "kanye", "yachty"], false) should return false
#
# Check your solution by running the tests:
# ruby tests/08_in_array_advanced_test.rb
#
#Don't use any helpers other than .each
#Try writing it on a whiteboard or paper first
<<<<<<< HEAD

def in_array_advanced (needle, haystack, strict)
  haystack.each do |word|
    if strict == true
      if word == needle
        return true
      end
    else strict == false
      if word.downcase == needle.downcase
        return true
      end
    end
  end
  return false
=======
<<<<<<< HEAD


def in_array_advanced (needle, haystack, strict)
  in_array_advanced.each do |check|
  if  == check return true
  else return false
=======
def in_array_advanced (needle, haystack, strict)
  # Your code here
>>>>>>> a27e985a082512b8706ff996c21bcd6320db76f3
>>>>>>> 733edf5808e3b9323de492faef9c96f846fbfba7
end

def in_array (needle)

in_array("HeLLo", ["hi", "howdy", "HeLLo"], true)
