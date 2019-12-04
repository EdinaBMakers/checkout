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

    total = 0

    @order.chars.each {|item| total += PRICES_AND_OFFERS[item]}

    total
  end
end