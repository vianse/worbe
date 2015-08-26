json.array!(@jobs) do |job|
  json.extract! job, :id, :business_id, :user_id, :name, :tag_id, :area_id, :description, :country_id, :state_id, :city_id, :day_type, :type_contract, :salary, :date_recruitment, :number_jobs, :year_experience, :minimum_age, :maximum_age, :language, :percentage_language, :ofimatica, :availability_travel, :change_home, :disability
  json.url job_url(job, format: :json)
end
