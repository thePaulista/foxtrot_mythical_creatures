class Ogre
  attr_reader :name, :home, :encounter_counter, :swings

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter
    @encounter_counter += 1
    @swings +=1
  end

  def swing_a_club
    @swings += 1
  end

  def hit?(human)
    true if @swings == 2
  end

  def apologize(human)
    true
  end
end

class Human
  attr_reader :name,

      def initialize
        @name = name
        @knocked_out = true
      end

  def notices_ogre?
    true #if @encounter_counter == 3
  end

  def knocked_out?
    if apologize
      @knocked_out = false
    else
      @knocked_out
    end
  end