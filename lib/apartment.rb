class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(apt_attr)
    @number = apt_attr[:number]
    @monthly_rent = apt_attr[:monthly_rent]
    @bathrooms = apt_attr[:bathrooms]
    @bedrooms = apt_attr[:bedrooms]
    @renter = nil
  end

  
end