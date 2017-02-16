json.extract! solicitud, :id, :status, :descripcion, :ayuda_id, :beneficiario_id, :solicitante_id, :created_at, :updated_at
json.url solicitud_url(solicitud, format: :json)