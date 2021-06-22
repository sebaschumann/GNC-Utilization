class Model < ApplicationRecord
    paginates_per 6
  belongs_to :brand

has_many :versions

validates :model, :presence => true, :uniqueness => true
validates :brand, :presence => true

  def model_brand
  model + ", " + brand.brand
  end
end
