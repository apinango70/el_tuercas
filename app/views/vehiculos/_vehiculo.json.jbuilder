json.extract! vehiculo, :id, :patente, :marca, :modelo, :ano, :user_id, :created_at, :updated_at
json.url vehiculo_url(vehiculo, format: :json)
