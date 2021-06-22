class Workshop < ApplicationRecord
    paginates_per 6
  belongs_to :locality
  has_many :kit_installations

  validates :name, :presence => true
  validates :address, :presence => true
    validates :locality, :presence => true

    def name_locality
   name + ", " + locality.name + ", " + locality.province.name  + ", "  + locality.province.country.name
    end
end
