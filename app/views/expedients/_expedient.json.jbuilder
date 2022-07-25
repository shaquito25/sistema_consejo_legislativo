json.extract! expedient, :id, :nombre_solicitante, :apellido_solicitante, :tipo_persona, :edad, :expediente_status_id, :fecha_nacimiento, :tipo_solicitud_id, :cantidad_solicitada, :identificador_unico, :email, :created_at, :updated_at
json.url expedient_url(expedient, format: :json)
