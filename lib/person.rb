# your code goes here
require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account,  :happiness, :hygiene
    

    def initialize name
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
   
    def happiness
        @happiness.clamp(0 , 10)
    end

    def happy?
        if self.happiness > 7
            return true
        else 
            return false
        end
    end

    def hygiene
        @hygiene.clamp(0, 10)
    end

    def hygiene=(value)
        @hygiene = value
    end

    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end
    
    def get_paid amount
       @bank_account = self.bank_account + amount
        return 'all about the benjamins'
    end

    def take_bath
        @hygiene=self.hygiene += 4


        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        @hygiene=self.hygiene -=3
        @happiness=self.happiness += 2

        return '♪ another one bites the dust ♫'
    end

    def call_friend person
        @happiness=self.happiness += 3
        person.happiness += 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation person, topic
        case topic
        when 'politics'
            
            @happiness=self.happiness -=2
            person.happiness -=2
            return 'blah blah partisan blah lobbyist'
        when 'weather'
            
            @happiness=self.happiness +=1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
        
    end

end

# expect(felix.call_friend(penelope)).to eq("Hi Penelope! It's Felix. How are you?")