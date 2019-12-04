require 'checkout'

describe Shop do
  describe '#new' do
    it "takes a parameter and returns a Shop object" do
      shop = Shop.new("")

      expect(shop).to be_an_instance_of(Shop)
    end
  end

  describe '#checkout' do
    it "returns -1 if order includes any non capital letter" do
      shop = Shop.new("a")

      expect(shop.checkout).to eq(-1)
    end

    it "returns -1 if order includes any number" do
      shop = Shop.new("1")

      expect(shop.checkout).to eq(-1)
    end

    it "returns -1 if order includes any non alphabet letter" do
      shop = Shop.new("-")

      expect(shop.checkout).to eq(-1)
    end

    it "returns 50 for order A" do
      shop = Shop.new("A")

      expect(shop.checkout).to eq(50)
    end

    it "returns 30 for order B" do
      shop = Shop.new("B")

      expect(shop.checkout).to eq(30)
    end
  end
end
