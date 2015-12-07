class Unicorn
  attr_reader :name
  attr_accessor :color

  def initialize(name, color = "white", say = "I don't like you very much")
    @name = name
    @color = color
  end

  def white?
    @color == "white"
  end

  def say(sparkly_stuff)
    "**;* #{sparkly_stuff} **;*"
  end

end
