require "minitest/autorun"
require "minitest/pride"
require './lib/apartment'
require './lib/renter'
require './lib/building'

class BuildingTest < Minitest::Test
  def test_it_exists_and_attributes
    building = Building.new

    assert_instance_of Building, building
    assert_equal [], building.units
  end

  def test_can_add_unit_to_building
    building = Building.new
    unit1 = Apartment.new({
      number: "A1",
      monthly_rent: 1200,
      bathrooms: 1,
      bedrooms: 1})
    unit2 = Apartment.new({
      number: "B2",
      monthly_rent: 999,
      bathrooms: 2,
      bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)
    assert_equal [unit1, unit2], building.units

  end
end
