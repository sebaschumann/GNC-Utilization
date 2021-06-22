class Version < ApplicationRecord
  belongs_to :model

  paginates_per 6

has_many :cars

  validates :version, :presence => true
  validates :model, :presence => true


  def version_model_brand
  model.brand.brand + ", " + model.model + "(" + version + ")"
  end
end
