class Centaur
  attr_reader :name,
              :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @actions = 0
  end

  def shoot
    if @actions >= 3 || laying?
      return "NO!"
    else
      @actions += 1
      "Twang!!!"
    end
  end

  def run
    if @actions >= 3 || laying?
      return "NO!"
    else
      @actions += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @cranky = true if @actions >= 3
  end

  def standing?
    @standing
  end

  def sleep
   if @standing
     return "NO!"
   else
     @actions = 0
     @cranky = false
   end
  end

  def lay_down
    @standing = false
  end

  def laying?
   !@standing
  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if rested
      gets_sick
    else
      rested
    end
  end

  def rested
    true
  end

  def gets_sick
    true
  end

end
