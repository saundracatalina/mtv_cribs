require "minitest/autorun"
require "minitest/pride"
require './lib/apartment'
require './lib/renter'

class ApartmentTest < Minitest::Test
  def test_it_exists_and_attributes
    unit1 = Apartment.new({
      number: "A1",
      monthly_rent: 1200,
      bathrooms: 1,
      bedrooms: 1})
    assert_instance_of Apartment, unit1
    # assert_equal "A1", unit1.number
  end
end
