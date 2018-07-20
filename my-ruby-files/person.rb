class Person
  
  #def initialize(name) #initialize is a private method; the others are not.
    #@name = name
  #end
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
 
  def name # Getter method
    "#{@first_name} #{@last_name}".strip
  end
  
  def name=(full_name) # Setter method
    first_name, last_name = full_name.split
    @first_name = first_name 
    @last_name = last_name
  end 
  
end
 
#kanye = Person.new("Kanye")
#kanye.name # "Kanye"

kanye = Person.new("Kanye", "West")
kanye.name # "Kanye West"

kanye.name = "Yeezy"
kanye.name # "Yeezy"
kanye.name=("Yeezy") # An alternate, but not preferred, way to write kanye.name = "Yeezy"
kanye.instance_variable_set(:@name, "Yeezy") # Same as above, but without using #name=

# Note: using the above notation actually creates a NEW instance variable for kanye!
# Also, if I don't define @name in the class itself,
# then #instance_variable_set will define @name ONLY for kanye.
# NO OTHER Person instances will have an @name instance variable!

kanye.instance_variable_get(:@name) # same as writing kanye.name, but without using #name

kanye #The return value here is the name of the class, the object address, and @name="Yeezy"
puts kanye # Prints the object identification #<Person:object_address>

# Note that if I define a new Person class here, 
# kanye is still an instance of the ORIGINAL Person class!