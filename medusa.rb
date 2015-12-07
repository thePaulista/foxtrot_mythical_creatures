class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues =[]
    @alive = true
  end

  def stare(victim)
    @statues.push(victim)
    victim.got_stoned
    if @statues.count == 4
      @statues.shift.unstone
    end

    def alive?
      if @statues.count == 5
          @alive = false
        else
          @alive
      end
    end
  end
end

class Person
  attr_reader :name

  def initialize(name)
    @name = name
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
