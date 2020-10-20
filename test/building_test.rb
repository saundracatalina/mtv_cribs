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
end
