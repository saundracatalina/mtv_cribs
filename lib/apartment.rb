class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms

  def initialize(data)
    @number = data[:number]
    @monthly_rent = data[:monthly_rent]
    @bathrooms = data[:bathrooms]
    @bedrooms = data[:bedrooms]
  end
end
