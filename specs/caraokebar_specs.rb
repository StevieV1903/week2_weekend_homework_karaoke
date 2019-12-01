require('minitest/autorun')
require('minitest/reporters')
require('pry')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../caraokebar')
require_relative("../rooms")
require_relative("../customer")

class CaraokeBarTest < Minitest::Test

  def setup
    @caraokebar = CaraokeBar.new("The Caraoke Cave", 1000.00)
    @customer1 = Customer.new("John", 30, "Bohemian Rhapsody", 50.00)
    @room1 = Room.new("room_one", 40.00)
  end

  def test_caraoke_bar_has_name
    assert_equal("The Caraoke Cave", @caraokebar.name)
  end

  def test_caraoke_bar_has_till
    assert_equal(1000.00, @caraokebar.till)
  end

  def test_caraoke_bar_pub_can_sell_room_to_customer
    @caraokebar.sell_room(@customer1, @room1)
    assert_equal(10.00, @customer1.cash())
    assert_equal(1040.00, @caraokebar.till())
  end




end
