class Locality < ApplicationRecord
  belongs_to :province

  paginates_per 6


has_many :service_stations
has_many :workshops
  validates :province, :presence => true
  validates :name, :presence => true, :uniqueness => true




  def locality_province_country
  name + ", " + province.name + "(" + province.country.name + ")"
  end
end
