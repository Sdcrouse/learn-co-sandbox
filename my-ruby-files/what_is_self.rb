class Testing 
  
  def name=(name)
    @name = name
    puts "Self = #{self}" # Self is the object instance.
  end 
  
  def name 
    @name 
    puts "Self = #{self}" # Self is the object instance.
  end
  
  def self.reveal_self # From my tests, this method is NOT called when Testing is defined.
    puts "Hello. I am #{self}" # Self is the Testing class
  end
  
  def hello 
    puts "Hello. The #hello instance method was called!"
  end 
  
  def self.hello 
    puts "Hello. The #self.hello class method was called!"
  end 
  
  def say_hello 
    hello
    self.hello 
    # Both lines of code above call the #hello instance method.
  end
  
  def self.say_hello 
    hello 
    self.hello 
    # Both lines of code above call the #self.hello class method.
    # self.class.hello => This won't work; I get a NoMethodError since #hello is not defined for Class:Class
  end
  
  def say_hello_again 
    self.class.hello # As expected, this calls the class method #self.hello.
  end
end

test1 = Testing.new 
test1.name = "test name" # => Self = #<Testing:0x0...>
test1.name # => Self = #<Testing:0x0...>
Testing.reveal_self # => Hello. I am Testing.
#test1.self.reveal_self => This won't work, as self is not a method.
test1.class.reveal_self # => Hello. I am Testing.
test1.say_hello # => Hello. The #hello instance method was called! (x2)
Testing.say_hello # => Hello. The #self.hello class method was called! (x2)
puts "Final Test:"
test1.say_hello_again #=> Hello. The #self.hello class method was called!
