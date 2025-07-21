class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    self.happiness = happiness
    self.hygiene = hygiene
  end

  def happiness=(happiness)
     if happiness > 10
       @happiness = 10
     elsif happiness < 0
      @happiness = 0
     else
      @happiness = happiness
     end
  end

  def hygiene=(hygiene)
     if hygiene > 10
       @hygiene = 10
     elsif hygiene < 0
      @hygiene = 0
     else
      @hygiene = hygiene 
     end
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
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
    
end
