class Werewolf
  attr_reader :name, :location

  def initialize(name, location="London")
    @name = name
    @location = location
    @human = true
    @change = 0
    @hungry = false
  end

  def human?
    if @change % 2 == 0
      @human = true
    end
  end

  def change!
    @human = false
    @change += 1
  end

  def werewolf?
    true
  end

  def hungry?
    if @change >= 1
      true
    end
  end

end
