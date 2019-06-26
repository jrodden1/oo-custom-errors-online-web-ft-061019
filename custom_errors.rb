class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.class != Person
      begin 
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    else
    self.partner = person
    person.partner = self
    puts "#{self.name} is now married to #{self.partner.name}"
    end
  end

  class PartnerError < StandardError
    def message
      "You must give the get_married method an argument of an instance of the Person class!"
    end
  end
end

# This code will let you see the custom error message when you run "ruby custom_errors.rb" from the terminal
beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name

#here is the fixed the code above so it would work.  
#beyonce = Person.new("Beyonce")
#jayz = Person.new("Jay-Z")
#beyonce.get_married(jayz)
#puts beyonce.name


