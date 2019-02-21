require "pry"

class Person

  attr_accessor :bank_account, :hygiene
  attr_reader :name, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness_index)
    if happiness_index > 10
      @happiness = 10
    elsif happiness_index < 0
      @happiness = 0
    else
      @happiness = happiness_index
    end
  end

  def hygiene=(hygiene_index)
    if hygiene_index > 10
      @hygiene = 10
    elsif hygiene_index < 0
      @hygiene = 0
    else
      @hygiene = hygiene_index
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene= (@hygiene -3)
    self.happiness= (@happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness= (@happiness + 3)
    friend.happiness = (friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = (@happiness - 2)
      person.happiness = (person.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = (@happiness + 1)
      person.happiness = (person.happiness + 1)
      "blah blah sun blah rain"
    else
       "blah blah blah blah blah"
    end
  end

end
