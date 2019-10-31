require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :balance, :bank_account

    def initialize(name)
        @name = name
        @balance = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account
        @balance
    end

    #modified setter
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

    def get_paid (amount)
        @balance += amount
        "all about the benjamins"
    end

    #calls the hygiene setter method on the instance of Person and passes the value of @hygiene+=4
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end
