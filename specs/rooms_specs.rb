require('minitest/autorun')
require('minitest/reporters')
require('pry')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../rooms')

class RoomTest < Minitest::Test

  def setup
    @room1 = Room.new("room_one", 40.00)
  end

  def test_the_room_has_a_name
    assert_equal("room_one", @room1.name())
  end

  def test_the_room_has_a_cost
    assert_equal(40.00, @room1.cost_of_room())
  end

end
