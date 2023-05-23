# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness=(value)
        @happiness = value.clamp(0, 10)
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end
end

person = Person.new("Sanny")
puts person.name

puts person.bank_account

person.bank_account = 50
puts person.bank_account

puts person.happiness # Output: 8
person.happiness = 12
puts person.happiness # Output: 10 (maximum value allowed is 10)
person.happiness = -5
puts person.happiness # Output: 0 (minimum value allowed is 0)

puts person.hygiene # Output: 8
person.hygiene = 15
puts person.hygiene # Output: 10 (maximum value allowed is 10)
person.hygiene = -3
puts person.hygiene