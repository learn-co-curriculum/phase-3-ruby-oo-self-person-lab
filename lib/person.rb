require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(value)
    if value > 10
      @happiness = 10
    elsif value < 0
      @happiness = 0
    else
      @happiness = value
    end
  end

  def hygiene=(value)
      if value > 10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    else
      @hygiene = value
    end
  end

  def happy?
    @happiness > 7 
  end
  
  def clean?
    @hygiene > 7
  end

  def get_paid(amount=100)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath(cleaner=4)
    self.hygiene += cleaner
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end
  
  def work_out(dirtier=3, happy=2)
    self.hygiene -= dirtier
    self.happiness += happy
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
   case topic
   when "politics"
    self.happiness -= 2
    friend.happiness -= 2
      "blah blah partisan blah lobbyist"
   when "weather"
    self.happiness += 1
    friend.happiness += 1
    "blah blah sun blah rain"
   else
     "blah blah blah blah blah"
    end
  end
end

new_person = Person.new("Blake")
puts new_person.name
new_person.bank_account = 100
puts new_person.bank_account
puts new_person.happiness
puts new_person.hygiene
puts new_person.happy?
puts new_person.clean?
puts new_person.get_paid(100)
puts new_person.take_bath
puts new_person.name
