class Shop
  PRICES_AND_OFFERS = {
    "AAA" => 130,
    "BB" => 45,
    "A" => 50,
    "B" => 30,
    "C" => 20,
    "D" => 15
  }

  def initialize(order)
    @order = order
  end

  def checkout
    return -1 if /[^A-Z]/.match(@order)

    sorted_order = @order.chars.sort.join
    total = 0

    while sorted_order.length > 0 do
      PRICES_AND_OFFERS.each do |product_or_offer, price|
        if sorted_order.match(product_or_offer)
          total += price
          sorted_order.slice!(product_or_offer)
          break
        end
      end
    end

    total
  end
end