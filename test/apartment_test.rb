require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/apartment'

class ApartmentTest < Minitest::Test
  def test_it_exists_and_has_attributes
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, apartment
    assert_equal "A1", unit1.number
    assert_equal 1200, unit1.monthly_rent
    assert_equal 1, unit1.bathrooms
    assert_equal 1, unit1.bedrooms
  end

  def test_apartment_is_empty_by_default
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_nil unit1.renter
  end
end