class Pirate
  attr_reader :name
  attr_accessor :job

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = 0
    @booty = 0
   end

  def cursed?
    if @cursed >= 3
      true
    end
  end

  def commit_heinous_act
    @cursed += 1
  end

  def rob_ship
    @booty +=100
  end

  def booty
    @booty
  end

end
