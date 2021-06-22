class Country < ApplicationRecord
paginates_per 4

  has_many :provinces

  validates :name, :presence => true, :uniqueness => true
end
