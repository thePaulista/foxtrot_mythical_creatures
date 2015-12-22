class Wizard
  attr_reader :name

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @casting = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    return @casting < 3
  end

  def cast
    @casting += 1
    "MAGIC MISSILE!"
  end

end
