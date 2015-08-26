json.array!(@businesses) do |business|
  json.extract! business, :id, :user_id, :name, :business_name, :rfc, :country_id, :state_id, :city_id, :Postal_Code, :address, :sector, :Number_of_employees, :business_type, :business_description, :web, :logo
  json.url business_url(business, format: :json)
end
