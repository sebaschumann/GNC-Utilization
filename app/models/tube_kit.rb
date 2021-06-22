class TubeKit < ApplicationRecord
  paginates_per 6

  belongs_to :tube

  has_many :kit_installations
  has_many :kit_verifications

    validates :kit_number, :presence => true
    validates :tube, :presence => true, :uniqueness => true
end
