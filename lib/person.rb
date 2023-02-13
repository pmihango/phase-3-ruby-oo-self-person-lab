# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
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

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end
  
  def take_bath
     
      self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
   
  end

  def work_out
    self.happiness +=2
    self.hygiene -=3
    "♪ another one bites the dust ♫"

    
  end

      def call_friend(friend)
             friend.happiness +=3 
             self.happiness +=3

            #  " Hi #{name.friend}! it's #{name.self} How are you"
             "Hi #{friend.name}! It's #{self.name}. How are you?"
      end


      def start_conversation (friend , topic)
         if topic = politics
          friend.happiness -=2
          self.happiness -=2
          "blah blah partisan blah lobbyist"
          elsif topic = weather
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
            else
              "blah blah blah blah blah"
            end
      end
    

      def start_conversation(friend , topic)
        if topic == "politics"
          [friend , self].each {|person| person.happiness -=2}
          return 'blah blah partisan blah lobbyist' 
      elsif topic == "weather"
          [friend , self].map {|person| person.happiness +=1}
          return 'blah blah sun blah rain'
      else
          return 'blah blah blah blah blah'
      end
      end
end
