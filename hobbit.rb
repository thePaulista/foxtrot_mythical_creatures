class Hobbit
  attr_reader :name

  def initialize(name, disposition = "homebody", age = 0)
    @name = name
    @disposition = disposition
    @age = age
    @has_ring = (name == "Frodo")
  end

  def disposition
    @disposition
  end

  def age
    @age
  end

  def celebrate_birthday
    @age += 1
  end

  def child
    if @age <= 32
      true
    end
  end

  def adult?
    if @age >= 33
      true
    end
  end

  def old?
    if @age >= 101
      true
    end
  end

  def has_ring?
    @has_ring
  end

def is_short?
  true
end
end
