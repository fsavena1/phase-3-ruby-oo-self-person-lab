require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
#  base instance methods 

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
    end
    
    def happiness=(num)
        @happiness= if num > 10 
            10
        elsif num < 0 
            0
        else
            num
        end
       
    end
    # binding.pry

    def hygiene=(num)
        @hygiene= if num > 10 
            10
        elsif num < 0 
            0
        else
            num
        end
    end
# additional instance methods 

    def happy?
        if self.happiness > 7
            true
        else 
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else 
            false
        end
    end

    def get_paid(num)
        self.bank_account += num
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end


    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
       
    end

    def start_conversation(person, topic)
        case topic
         when "politics"
           self.happiness -= 2
           person.happiness -= 2
            "blah blah partisan blah lobbyist"
         when "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
         else
            "blah blah blah blah blah"
         end
         end
    
end

frank=Person.new("Frank")

