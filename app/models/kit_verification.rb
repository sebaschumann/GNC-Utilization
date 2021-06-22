class KitVerification < ApplicationRecord
    paginates_per 6
  belongs_to :tube_kit

  validates :year, :presence => true
  validates :tube_kit, :presence => true
end
