# Dictionary
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 4/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A previous stone'
# dictionary.lookup('ruby') -> should return 'A precious stone'
#
# Check your solution by running the tests:
# ruby tests/10_dictionary_test.rb
#
class Dictionary
  def initialize
    @dictionary = []
  end
  def add_word(word, definition)
    @dictionary.push({word:word, definition:definition})
  end
  def lookup(word)
    @dictionary.each do |c|
      return c[:definition] if c[:word] == word
    end
  end
  def total_words
    count = 0
    @dictionary.each do |c|
    count += 1
    end
    return count
  end
end
# dictionary = Dictionary.new
# dictionary.add_word("ruby", "A precious stone")
# dictionary.lookup("ruby")
# dictionary.total_words
