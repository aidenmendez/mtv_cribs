require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/building'
require './lib/apartment'
require './lib/renter'

class BuildingTest < Minitest::Test
  def setup
    @building = Building.new
  end

  def test_building_exists
    assert_instance_of Building, @building
  end

  def test_building_units_empty_by_default
    assert_equal [], @building.units
  end
end