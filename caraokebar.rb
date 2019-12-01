class CaraokeBar

  attr_reader :name, :till

  def initialize(name, till)
    @name = name
    @till = till
  end

  def add_cash(amount)
    return @till += amount
  end

  def sell_room(customer, room)
      customer.pay_for_room(room)
      @till += room.cost_of_room()
  end







end
