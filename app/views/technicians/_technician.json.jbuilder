json.extract! technician, :id, :first_name, :last_name, :birthday, :document_number, :created_at, :updated_at
json.url technician_url(technician, format: :json)
