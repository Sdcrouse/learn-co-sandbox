require 'pry'

def square_array(array)
  squares = []
  array.each do |i|
    squares << i * i
  end
end

square = square_array([1,2,3,4])
# My guess is that #square_array will return [1,2,3,4].
# Ruby methods return the value of the last line of code in them.
# each returns 
puts square
#binding.pry
# I was right!!! 
# So, to get it to return [1,4,9,16], just write squares between the two end statements.

def count_letters_in_words (array)
  letters_in_words = [] # setup
  array.each do |word| # start a loop
    letters_in_words << word.length # do something (find the number of letters in a word)
  end
  letters_in_words # return state / teardown
end

word_length = count_letters_in_words(["one", "two", "three"]) # [3, 3, 5]
puts word_length
# Note: #square_array and count_letters_in_words are sandwich methods, 
# because most of the format is the same from method to method.
# The "bread" (setting up the arrays, calling #each, and returning the arrays)
# stays the same from method to method.
# The only thing that changes is the "meat" (the code executed by #each)!
# Conclusion: we need a block!

def modified_array(array)
  # This is a modified version of #map or #collect. Look these up!
  modified = []
  array.each do |e|
    #binding.pry
    # On the first run of #each, e => 1
    # NOTE: if I want to exit out of EVERYTHING, type "exit!" (no quotes).
    # If I want to exit out of just ONE binding.pry, type "exit"
    #yield(e, "hello")
    modified << yield(e)
    #binding.pry
  end
  modified
end

#modified_array([1,2,3,4]) do |x, word| # x => 1 on the first run of #each
  #binding.pry
#end
square_this = modified_array([1,2,3,4]) {|x| 
x * x
#8
} 
puts square_this # [1,4,9,16]

word_length = modified_array(["one", "two", "three"]){|x| x.length}
puts word_length # [3,3,5]