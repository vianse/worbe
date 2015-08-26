json.array!(@objetivos) do |objetivo|
  json.extract! objetivo, :id, :cv_id, :idioma_id, :user_id, :objetivos
  json.url objetivo_url(objetivo, format: :json)
end
