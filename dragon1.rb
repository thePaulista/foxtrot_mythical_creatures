class Dragon
  attr_reader :name, :rider, :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @ate = 0
  end

  def hungry?
    return @ate < 3
  end

  def eat
    @ate += 1
  end

end
