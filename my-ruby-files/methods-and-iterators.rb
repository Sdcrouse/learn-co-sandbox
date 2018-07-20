# This method will have the same output as the iterator method.

def hi_there(name)
  puts "Hi, #{name}!"
end

hi_there("Sophie") # Prints "Hi, Sophie!" and returns nil.

person = ["Sophie"]
person.each do |name|
  puts "Hi, #{name}!"
end # Prints "Hi, Sophie!" and returns ["Sophie"] 