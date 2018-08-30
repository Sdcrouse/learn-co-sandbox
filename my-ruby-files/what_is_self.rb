class Testing 
  def initialize 
    @@phrase = "Greetings!"
    @other_phrase = "Goodbye!"
  end
  
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
  
  def self.test_phrase 
    puts "Testing!"
    # I cannot call this with a Test object directly! test1.test_phrase creates an error.
    # Call it with either Testing.test_phrase or test1.class.test_phrase.
  end 
  
  def reveal_class_variable # This works, since @@phrase is accessible to all objects
    puts @@phrase 
    
    # This should also work:
    @@number = 123 
    puts @@number
  end
  
  def self.reveal_instance_variable
    # This won't work. @other_phrase is an instance variable.
    # The @other_phrase in #initialize and the @other_phrase below are different!
    puts @other_phrase # nil
    
    # This, however, WILL work!
    @new_phrase = "This should print"
    puts @new_phrase
  end
  
  def say_hello_again 
    self.class.hello # As expected, this calls the class method #self.hello.
    # Also, calling Testing.say_hello_again creates a NoMethodError.
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
Testing.test_phrase # => Testing!
test1.class.test_phrase # => Testing!
#test1.test_phrase # => Undefined method 'test_phrase' for #<Testing:0x0... @name="test name"> (NoMethodError)
#Testing.say_hello_again # => Undefined method 'say_hello_again' for Testing:Class
test1.reveal_class_variable # => Greetings!
Testing.reveal_instance_variable # => Outputs nothing
test1.say_hello_again #=> Hello. The #self.hello class method was called!
