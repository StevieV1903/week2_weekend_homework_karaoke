require('minitest/autorun')
require('minitest/reporters')
require('pry')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../rooms')
require_relative('../songs')
require_relative('../customer')

class RoomTest < Minitest::Test

  def setup
    @room1 = Room.new("room_one", 40.00)

    @song1 = Song.new("Wonderwall", "Oasis")
    @song2 = Song.new("Bohemian Rhapsody", "Queen")
    @song3 = Song.new("My Way", "Frank Sinatra")
    @song4 = Song.new("Sweet Caroline", "Neil Diamond")

    @total_song_playlist = [@song1, @song2, @song3, @song4]

    @customer1 = Customer.new("John", 30, "Bohemian Rhapsody", 50.00)

  end

  def test_the_room_has_a_name
    assert_equal("room_one", @room1.name())
  end

  def test_the_room_has_a_cost
    assert_equal(40.00, @room1.cost_of_room())
  end

  def test_add_the_total_playlist_to_the_room
    assert_equal(4, @total_song_playlist.length)
  end

  def test_can_add_customer_to_room
    assert_equal("John", @customer1.name)
  end

  # def test_the_customer_can_book_the_room_if_free
  #   assert_equal(0, @room1.booked_customers)
  # end



end
