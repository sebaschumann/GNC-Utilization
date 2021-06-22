class Brand < ApplicationRecord
paginates_per 6
  has_many :models

  validates :brand, :presence => true, :uniqueness => true
end
