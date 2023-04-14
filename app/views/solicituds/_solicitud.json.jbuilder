json.extract! solicitud, :id, :zone_id, :fecha, :descripcion, :usuario_id, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)
