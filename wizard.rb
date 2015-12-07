class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(root_power)
    "sudo #{root_power}"
  end

  def rested?
    if @cast <= 2
      true
    end
  end

  def cast
    @cast += 1
    "MAGIC MISSILE!"
  end
end
