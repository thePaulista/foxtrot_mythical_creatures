class Pirate
  attr_reader :name, :job

  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = 0
    @booty = 0
  end

  def cursed?
    return @cursed >= 3
  end

  def commit_heinous_act
    @cursed += 1
  end

  def rob_ship
    @booty += 100
  end

  def booty
    @booty
  end

end


#for def cursed?, for better read I used if/else method
# def cursed?
#   if @cursed >= 3
#     true
#   else
#     false
#   end
# end
