require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/renter'

class RenterTest < Minitest::Test
  def test_renter_exists_and_has_name
    renter = Renter.new("Jessie")

    assert_instance_of Renter, renter
    assert_equal "Jessie", renter.name
  end
end