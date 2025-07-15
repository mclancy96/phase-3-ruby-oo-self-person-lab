require 'pry'

class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(new_hygiene)
    if new_hygiene < 0
      @hygiene = 0
    elsif new_hygiene > 10
      @hygiene = 10
    else
      @hygiene = new_hygiene
    end
  end

  def happiness=(new_happiness)
    if new_happiness < 0
      @happiness = 0
    elsif new_happiness > 10
      @happiness = 10
    else
      @happiness = new_happiness
    end
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

end
