class Building
  attr_reader :units, :renters

  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renter(renter)
    @renters << renter.name
  end

  def average_rent
    total_rent = 0
    units.each do |unit|
      total_rent += unit.monthly_rent.to_f
    end

    total_rent/ units.length
  end

  def rented_units
    rented_units = @units.select do |unit|
      unit.renter != nil
    end
  end

  def renter_with_highest_rent
    max_unit = rented_units.max_by do |unit|
      unit.monthly_rent
    end

    max_unit.renter 
  end

  def units_by_number_of_bedrooms
     bed_hash = {
      3 => [],
      2 => [],
      1 => []
    }

    units.each do |unit|
      bed_hash[unit.bedrooms] << unit.number
    end
    bed_hash
  end
end