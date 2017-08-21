json.extract! registro, :id, :nombre, :correo, :cargo, :created_at, :updated_at
json.url registro_url(registro, format: :json)
