class Dragon
  attr_reader :name
  attr_accessor :rider, :color

  def initialize(name, color, rider)
    @name = name
    @rider = rider
    @color = color
    @hungry = 0
  end

  def hungry?
    if @hungry <= 2
      true
    end
  end

  def eat
    @hungry += 1
  end

end
