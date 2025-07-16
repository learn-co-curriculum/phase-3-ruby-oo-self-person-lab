class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name 
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene 
  end

  def check_number(num) 
    if num <= 10 && num >= 0 
      num 
    elsif num > 10 
      10 
    else 
      0 
    end 
  end
  
  def happiness=(num)
    @happiness = check_number(num)
  end

  def hygiene=(num)
    @hygiene = check_number(num) 
  end

  def happy? 
    @happiness > 7 
  end

  def clean? 
    @hygiene > 7 
  end

  def get_paid(amount) 
    @bank_account += amount 
    "all about the benjamins"
  end

  def take_bath 
    self.hygiene += 4 
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out 
    self.hygiene -= 3 
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend) 
    self.happiness += 3 
    friend.happiness += 3 
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic) 
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
