json.array!(@certificates) do |certificate|
  json.extract! certificate, :id, :name, :user_id
  json.url certificate_url(certificate, format: :json)
end
