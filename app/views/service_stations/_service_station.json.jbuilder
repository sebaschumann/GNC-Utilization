json.extract! service_station, :id, :name, :adress, :fuel_types, :flag, :dispensers_quantity, :locality_id, :created_at, :updated_at
json.url service_station_url(service_station, format: :json)
