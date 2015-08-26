json.array!(@dgs) do |dg|
  json.extract! dg, :id, :name, :datebirthday, :age, :address, :phone1, :phone2, :email
  json.url dg_url(dg, format: :json)
end
