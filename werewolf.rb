class Werewolf
  attr_reader :name
  attr_accessor :location

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
    @hungry = false
    @change = 0
  end

  def human?
    return @change % 2 == 0
  end

  def change!
    @change += 1
    @human = false
  end

  def werewolf?
    !@hungry
  end

  def hungry?
    @hungry = true
  end

end
