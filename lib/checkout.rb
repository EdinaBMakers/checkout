class Shop
  PRICES_AND_OFFERS = {
    "A" => 50,
    "B" => 30,
    "C" => 20,
    "D" => 15,
    "AAA" => 130,
    "BB" => 45
  }

  def initialize(order)
    @order = order
  end

  def checkout
    return -1 if /[^A-Z]/.match(@order)

    PRICES_AND_OFFERS[@order]
  end
end