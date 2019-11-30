require('minitest/autorun')
require('minitest/reporters')
require('pry')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../songs')

class SongTest < Minitest::Test

  def setup
    @song1 = Song.new("Wonderwall", "Oasis")
    @song2 = Song.new("Bohemian Rhapsody", "Queen")
    @song3 = Song.new("My Way", "Frank Sinatra")
    @song4 = Song.new("Sweet Caroline", "Neil Diamond")

    @song_playlist = [@song1, @song2, @song3, @song4]
    
  end

  def test_the_song_has_a_name
    assert_equal("Wonderwall", @song1.name())
  end

  def test_the_song_has_an_artist
    assert_equal("Oasis", @song1.artist())
  end






end
