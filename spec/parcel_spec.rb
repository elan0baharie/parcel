require('rspec')
require('parcel')
require('pry')

describe(Parcel) do
  describe("#volume") do
    it("returns the product of the sides") do
      new_parcel = Parcel.new(5, 10, 10)
      expect(new_parcel.volume()).to(eq(500))
    end
  end

  describe("#ship_price") do
    it("returns the price of the parcel to be shipped") do
      new_parcel = Parcel.new(5, 10, 10)
      expect(new_parcel.ship_price()).to(eq(15))
    end
  end


end
