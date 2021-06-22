class ExamType < ApplicationRecord
paginates_per 6
  has_many :tube_verifications

    validates :name, :presence => true
    validates :cost_on_argentinian_pesos, :presence => true
end
