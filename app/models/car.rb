class Car < ApplicationRecord

  paginates_per 6

  belongs_to :version

  has_many :gnc_charges
  has_many :kit_installations

  validates :license, :presence => true, :uniqueness => true
  validates :color, :presence => true
  validates :version, :presence => true


  def car_version_model_brand
  version.model.brand.brand + ", " + version.model.model + "(" + version.version + ")"
  end


  def license_car_version_model_brand
  license +  "(" + version.model.brand.brand + ", " + version.model.model + ", " + version.version + ")"
end
end
