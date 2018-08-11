# I'm using this to practice writing case statements.
# This prints "Welcome to Wonderland!"
# I tried to use 'when "Tweedledee" || "Tweedledum"', but it doesn't work as expected.
# I cannot use "when name == something" either.

name = "Anyone"

case name
  when "Alice"
    puts "Hello, Alice!"
  when "The White Rabbit"
    puts "Don't be late, White Rabbit"
  when "The Mad Hatter"
    puts "Welcome to the tea party, Mad Hatter"
  when "The Queen of Hearts"
    puts "Please don't chop off my head!"
  when "The Caterpillar" 
    puts "Whoooo are you?"
  when "Tweedledee", "Tweedledum"
    puts "Tell me about the Walrus and the Carpenter"
  when "The Jabberwock"
    puts "Prepare to meet my vorpal sword, Jabberwock!"
  else
    puts "Welcome to Wonderland!"
end
#-----------------------------------------------------------------------------------------

greeting = "friendly_greeting"

case greeting
  when "unfriendly greeting"
    puts "What do you want!?"
  when "friendly_greeting"
    puts "Hi! How are you?"
end
# => "Hi! How are you?"
#-----------------------------------------------------------------------------------------

current_weather = "raining"

case current_weather
  when "sunny"
    puts "Grab some sunscreen!"
  when "raining"
    puts "Grab an umbrella."
  when "snowing"
    puts "Bundle up."
end
#-----------------------------------------------------------------------------------------

print "Enter your grade: "
grade = gets.chomp
#puts grade.inspect

case grade
  when "A"
    puts "Good job, Homestar!"
  when "B"
    puts "You can totally do better!"
  when "C"
    puts "Find a mentor to help you!"
  else
    puts "You're just making that up!"
end