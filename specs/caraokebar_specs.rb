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
  end

  def test_caraoke_bar_has_name
    assert_equal("The Caraoke Cave", @caraokebar.name)
  end

  def test_caraoke_bar_has_till
    assert_equal(1000.00, @caraokebar.till)
  end

end
