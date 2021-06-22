class Tube < ApplicationRecord
  has_many :tube_verifications
  has_many :tube_kits

  paginates_per 4

    validates :diameter_on_milimeters, :presence => true
    validates :capacity_on_liters, :presence => true
    validates :expiration_date, :presence => true



def id_diameter_capacity
  " Tube " +  id.to_s  + " = " + diameter_on_milimeters.to_s + "(mm), " + capacity_on_liters.to_s + "(lts)"
end
end
