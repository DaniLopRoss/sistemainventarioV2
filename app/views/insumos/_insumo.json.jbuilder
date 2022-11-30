json.extract! insumo, :id, :nombre, :caracteristicas, :existencia, :estatus, :created_at, :updated_at
json.url insumo_url(insumo, format: :json)
