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
end
