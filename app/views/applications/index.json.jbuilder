json.array!(@applications) do |application|
  json.extract! application, :id, :business_id, :user_id, :job_id, :cv_id, :date_application
  json.url application_url(application, format: :json)
end
