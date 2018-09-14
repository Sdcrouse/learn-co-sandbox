class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin 
        raise PartnerError 
      rescue PartnerError => error 
          puts error.message
      end
    else 
      person.partner = self
    end
  end

  class PartnerError < StandardError
    def message 
      "You must give the get_married method an argument of an instance of the Person class!"
    end
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name

jay_z = Person.new("Jay-Z")
puts "\n" + jay_z.name 
beyonce.get_married(jay_z)
puts "Beyonce's husband is #{beyonce.partner.name}" 
puts "Jay-Z's wife is #{jay_z.partner.name}"


