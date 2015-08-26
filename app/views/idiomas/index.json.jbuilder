json.array!(@idiomas) do |idioma|
  json.extract! idioma, :id, :idioma
  json.url idioma_url(idioma, format: :json)
end
