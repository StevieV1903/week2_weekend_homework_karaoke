require('minitest/autorun')
require('minitest/reporters')
require('pry')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../customer')
require_relative('../rooms')

class CustomerTest < Minitest::Test

  def setup
    @customer1 = Customer.new("John", 30, "Bohemian Rhapsody", 50.00)
    @customer2 = Customer.new("James", 40, "My Way", 60.00)
    @customer3 = Customer.new("Jock", 20, "Dignity", 35.00)

    @room = Room.new("room_one", 40.00)
  end

  def test_the_customer_has_a_name
    assert_equal("John", @customer1.name())
  end

  def test_the_customer_has_an_age
    assert_equal(30, @customer1.age())
  end

  def test_the_customer_has_a_favourite_song
    assert_equal("Bohemian Rhapsody", @customer1.favourite_song())
  end

  def test_the_customer_has_cash
    assert_equal(50.00, @customer1.cash)
  end

  def test_the_customer_has_sufficient_funds_to_pay_for_room
    assert_equal(true, @customer1.sufficient_funds?(@room))
  end

  def test_the_customer_does_not_have_sufficient_funds_to_pay_for_room
    assert_equal(false, @customer3.sufficient_funds?(@room))
  end

  def test_the_customers_cash_decreases_when_pays_for_room
    @customer1.pay_for_room(@room)
    assert_equal(10.00, @customer1.cash())
  end

  
end
