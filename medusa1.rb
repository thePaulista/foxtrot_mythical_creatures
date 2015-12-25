require 'pry'
class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
    @alive = true
    @num_of_stares = 0
  end

  def stare(victim)
    @num_of_stares += 1
    @statues << victim
    victim.got_stoned
    if @statues.count > 3
      @statues.shift.unstone
    end
  end

# #to pass the previous test, this was the if/else loop, but it
# didn't work for the next test, so the stoning got moved up
#   # def stare(victim)
#   #     @statues << victim
#   #     if @statues.count > 3
#   #       @statues.shift.unstone
#   #     else
#   #       victim.got_stoned
#   #     end
#   # end

  def alive?
    return @num_of_stares < 5
  end

end

class Person
  attr_reader :name

  def initialize(name)
    @name  = name
    @stoned = false
  end

  def stoned?
    @stoned
   end

   def got_stoned
      @stoned = true
    end

    def unstone
      @stoned = false
    end

end

# medusa = Medusa.new("Cassiopeia")
# victim1 = Person.new("Perseus")
# victim2 = Person.new("Jeff")
# victim3 = Person.new("Mike")
# victim4 = Person.new("Horace")
# victim5 = Person.new("Josh")
# medusa.alive?
