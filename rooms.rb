class Room

  attr_reader :name, :cost_of_room

  def initialize(name, cost_of_room)
    @name = name
    @cost_of_room = cost_of_room

    @room_playlist = []
    @booked_customers = []
    @room_capacity = 4
  end

  def add_total_song_playlist_to_room_playist(number_of_songs)
    @room_playlist << number_of_songs
    return @room_playlist.length
  end

  def add_customer_to_room(customer)
    @booked_customers << customer
    return @booked_customers
  end

  # def number_of_songs_on_playlist_for_caraoke_room(song_playlist)
  #   @room_playlist << song_playlist
  # return @room_playlist.length
  # end
end
