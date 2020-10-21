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

    }

    units.each do |unit|
      if bed_hash.key?(unit.bedrooms)
        bed_hash[unit.bedrooms] << unit.number
      else
        bed_hash[unit.bedrooms] = [unit.number]
      end
      
    end
    bed_hash
  end

  def annual_breakdown
    breakdown = {}
    
    rented_units.each do |unit|
      breakdown[unit.renter.name] = unit.monthly_rent * 12
    end

    breakdown
  end

  def rooms_by_renter
    rooms = {}
    rented_units.each do |unit|
      rooms[unit.renter] = { bedrooms: unit.bedrooms, bathrooms: unit.bathrooms }
    end

    rooms
  end
end