class Shop
  def initialize(order)
    @order = order
  end

  def checkout
    return -1 if /[^A-Z]/.match(@order)
  end
end