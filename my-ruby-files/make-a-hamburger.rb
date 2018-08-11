# I wrote this file to practice using #each, #map, and #collect.

toppings = ["pickles", "mushrooms", "bacon"]

def hamburger(toppings) # Uses #each to output a message for each topping
  toppings.each {|topping| puts "I love #{topping} on my burgers!"}
end

puts hamburger(toppings)
puts hamburger(toppings).inspect # These have two different outputs!

def hamburger_v2(toppings) # Returns an array of messages, one for each topping
  my_statements = []
  toppings.each do |topping|
    my_statements << "I love #{topping} on my burgers!"
  end
  my_statements
end

puts hamburger_v2(toppings).inspect

def hamburger_v3(toppings) # Uses #map to output a message for each topping
  toppings.map do |topping|
    puts "I love #{topping} on my burgers!"
  end
end 

puts hamburger_v3(toppings).inspect
# Note the different outputs when comparing #hamburger_v3 with #hamburger.

def hamburger_v4(toppings)
  toppings.collect {|topping| puts "I love #{topping} on my burgers!"}
end

puts hamburger_v4(toppings).inspect 
# The output above proves that #map and #collect do the same thing!

def hamburger_v5(toppings)
  toppings.collect {|topping| "I love #{topping} on my burgers!"}
end

puts hamburger_v5(toppings).inspect # This outputs the same thing as #hamburger_v2

# ruby my-ruby-files/make-a-hamburger.rb
# I got the idea to try that from a discussion. All this does is get a NameError.
