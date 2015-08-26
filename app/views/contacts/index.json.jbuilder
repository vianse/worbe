json.array!(@contacts) do |contact|
  json.extract! contact, :id, :business_id, :name, :last_name, :office, :email, :mobile_phone, :fixed_phone, :office_phone, :ext
  json.url contact_url(contact, format: :json)
end
