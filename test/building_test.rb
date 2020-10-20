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
end