gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'werewolf'

class WerewolfTest < Minitest::Test
  def test_it_has_a_name
    werewolf = Werewolf.new("David")
    assert_equal "David", werewolf.name
  end

  def test_it_has_a_location
    werewolf = Werewolf.new("David","London")
    assert_equal "London", werewolf.location
  end

  def test_it_is_by_default_in_human_form
    werewolf = Werewolf.new("David","London")
    assert werewolf.human?
  end

  def test_it_can_change
    werewolf = Werewolf.new("David","London")
    assert werewolf.respond_to?(:change!)
  end

  def test_when_starting_as_a_human_changing_means_it_is_no_longer_human
    werewolf = Werewolf.new("David","London")
    werewolf.change!
    refute werewolf.human?
  end

  def test_when_starting_as_a_human_changing_turns_it_into_a_werewolf
    werewolf = Werewolf.new("David","London")
    werewolf.change!
    assert werewolf.werewolf?
  end

  # def test_when_starting_as_a_human_changing_a_second_time_it_becomes_human_again
  #   werewolf = Werewolf.new("David","London")
  #   assert werewolf.human?
  #   werewolf.change!
  #   werewolf.change!
  #   assert werewolf.human?
  # end
  #
  # def test_when_starting_as_a_werewolf_changing_a_second_time_it_becomes_werewolf_again
  #   werewolf = Werewolf.new("David","London")
  #   werewolf.change!
  #   assert werewolf.werewolf?
  #   werewolf.change!
  #   werewolf.change!
  #   assert werewolf.werewolf?
  # end

  def test_is_not_hungry_by_default
    werewolf = Werewolf.new("David","London")
    werewolf.hungry?
  end

  def test_becomes_hungry_after_changing_to_a_werewolf
    werewolf = Werewolf.new("David","London")
    werewolf.change!
    werewolf.hungry?
    assert_equal true, werewolf.hungry?
  end

  def test_remains_hungry_after_changing_back_to_a_human
    werewolf = Werewolf.new("David","London")
    assert werewolf.human?
    werewolf.change!
    werewolf.change!
    assert werewolf.human?
    assert_equal true, werewolf.hungry?

  end

end
