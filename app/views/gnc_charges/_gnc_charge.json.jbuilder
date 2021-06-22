json.extract! gnc_charge, :id, :charge_moment, :weather, :celsius_temperature, :cost_on_argentinian_pesos, :car_id, :service_station_id, :client_id, :created_at, :updated_at
json.url gnc_charge_url(gnc_charge, format: :json)
