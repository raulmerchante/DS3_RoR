json.extract! diario, :id, :nombre_paciente, :apellidos_paciente, :fecha, :dni, :created_at, :updated_at
json.url diario_url(diario, format: :json)
