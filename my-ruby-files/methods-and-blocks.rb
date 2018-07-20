require 'pry'

def do_three_times(&n) # &n is a named block; this is advanced stuff
  binding.pry # Pass this a block, and see what happens!
  #Then, write n.call or n.methods (not n.methods yet, until I know how to exit it).
  #Apparently, you can inject variables into a proc as well.
  puts "I'm inside do_three_times"
  #puts "There was a block" if block_given?
  n.call
  yield if block_given?
  puts "Now I'm back in the block"
end

binding.pry

#do_three_times {|x| puts "I'm in the block"}
# Try n.parameters