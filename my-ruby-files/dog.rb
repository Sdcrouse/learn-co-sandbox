class Dog 
  
  def name=(dog_name)
    @this_dogs_name = dog_name
  end
  
  def name 
    @this_dogs_name 
  end 
  
  def change_name(new_name) # This works, but it's not needed.
    @this_dogs_name = new_name
  end
end

lassie = Dog.new
lassie.name = "Lassie"

puts lassie.name 

lassie.change_name("Laddie")
puts "The Dog's new name is #{lassie.name}"

#weird = lassie.name = "Lassie"
#puts weird # It looks confusing, but weird is set to "Lassie". AND so is lassie.name!