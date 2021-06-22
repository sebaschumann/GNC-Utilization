class ServiceStation < ApplicationRecord
  paginates_per 6

  belongs_to :locality

  has_many :gnc_charges
    validates :name, :presence => true
    validates :adress, :presence => true
    validates :fuel_types, :presence => true
    validates :flag, :presence => true
    validates :dispensers_quantity, :presence => true
    validates :locality, :presence => true



def service_station_locality_province_country
name + ", " + locality.name + ", " + locality.province.name + "(" + locality.province.country.name + ")"
end

def types_fuel
  if fuel_types == 1
    "GNC"
  elsif fuel_types == 2
    "GNC, Nafta y Diesel"
  else
      "Nafta y Diesel"
  end
  end


    def flagg
    if flag  == 1
      "BLANCA"
    else
      "SIN BANDERA"
    end
end
end
