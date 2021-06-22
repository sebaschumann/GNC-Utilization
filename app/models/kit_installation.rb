class KitInstallation < ApplicationRecord
  paginates_per 4
  belongs_to :tube_kit
  belongs_to :workshop
  belongs_to :car

  has_many :installation_employees

  validates :date, :presence => true
  validates :cost_on_argentinian_pesos, :presence => true
    validates :tube_kit, :presence => true, :uniqueness => true
    validates :workshop, :presence => true
    validates :car, :presence => true

end
