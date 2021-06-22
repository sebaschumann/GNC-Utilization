class GncCharge < ApplicationRecord

    paginates_per 6
  belongs_to :car
  belongs_to :service_station
  belongs_to :client


  validates :charge_moment, :presence => true
  validates :weather, :presence => true
  validates :celsius_temperature, :presence => true
  validates_numericality_of :celsius_temperature, less_than_or_equal_to: 70, greater_than_or_equal_to: -50
  validates :cost_on_argentinian_pesos, :presence => true
  validates :service_station, :presence => true
  validates :client, :presence => true
  validates :car, :presence => true




end
