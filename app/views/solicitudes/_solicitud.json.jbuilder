json.extract! solicitud, :id, :status, :descripcion, :ayuda_id, :relacion_id, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)