json.array!(@my_tags) do |my_tag|
  json.extract! my_tag, :id, :cv_id, :idioma_id, :user_id, :tag_id
  json.url my_tag_url(my_tag, format: :json)
end
