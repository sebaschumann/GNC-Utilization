class Province < ApplicationRecord
  belongs_to :country

paginates_per 6

  has_many :localities

  validates :country, :presence => true
  validates :name, :presence => true, :uniqueness => true


  def province_country
  name + ", " + country.name
  end
end
