json.array!(@vacantes) do |vacante|
  json.extract! vacante, :id, :name, :description, :business, :business_id
  json.url vacante_url(vacante, format: :json)
end
