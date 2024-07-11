class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(
    name,
    bank_account = 25,
    happiness = 8,
    hygiene = 8
    )
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(new_happiness)
    if new_happiness > 10
      @happiness = 10
    elsif new_happiness < 0
      @happiness = 0
    else
      @happiness = new_happiness
    end
  end

  def hygiene=(new_hygiene)
    if new_hygiene > 10
      @hygiene = 10
    elsif new_hygiene < 0
      @hygiene = 0
    else
      @hygiene = new_hygiene
    end
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
    self.hygiene = @hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene -= 3
    self.happiness = @happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == 'politics'
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
