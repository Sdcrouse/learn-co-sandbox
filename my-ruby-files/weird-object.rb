class Weirdness
  def ==(number)
    puts number
    true
  end
  
  def six?
    self ==(6)
  end
end

=begin
I wanted to figure out how to redefine == . I partially succeeded. In #six?, I still need to include "self", or I get a Syntax Error. Also, if I use == or .== on a non-Weirdness object, it returns the normal result, rather than the redefined result. Note also that when I define a Weirdness object, I can pass ANYTHING to the redefined #== method. Lastly, to access this file from irb, just type require_relative 'file_path'. Be sure to include those quotes!
=end