json.array!(@cvs) do |cv|
  json.extract! cv, :id, :user_id, :idioma_id, :title
  json.url cv_url(cv, format: :json)
end
