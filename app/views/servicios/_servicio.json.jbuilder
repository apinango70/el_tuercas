json.extract! servicio, :id, :tipo, :estado, :piezas, :fecha_entrega, :vehiculo_id, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)
