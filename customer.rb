class Customer

  attr_reader :name, :age, :favourite_song, :cash

def initialize(name, age, favourite_song, cash)
  @name = name
  @age = age
  @favourite_song = favourite_song
  @cash = cash
end

def pay_for_room(room)
    if sufficient_funds?(room)
      @cash -= room.cost_of_room()
    end
  end

  def sufficient_funds?(room)
    return cash >= room.cost_of_room()
  end




end
