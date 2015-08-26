json.array!(@cities) do |city|
  json.extract! city, :id, :state_id, :country_id, :name, :code_city
  json.url city_url(city, format: :json)
end
