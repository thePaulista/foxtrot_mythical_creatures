class Werewolf
  attr_reader :name
  attr_accessor :location

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
    @hungry = false
  end

  def human?
    @human
  end

  def change!
    @human = false
  end

  def werewolf?
    !@hungry
  end

  def hungry?
    @hungry = true
  end

end
