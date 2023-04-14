json.extract! reporte, :id, :fecha, :observaciones, :tipo_problema, :maintenance_id
json.url reporte_url(reporte, format: :json)
