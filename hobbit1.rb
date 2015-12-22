class Hobbit
  attr_reader :name, :disposition, :age

  def initialize(name, disposition="homebody", age=0)
    @name = name
    @disposition = disposition
    @age = age
  end

  def celebrate_birthday
    @age +=1
  end

  def adult?
    return age >32
  end

  def old?
    return age > 100
  end

  def has_ring?
    if @name == "Frodo"
      return true
    else
      false
    end
  end

  def is_short?
    true
  end

end
