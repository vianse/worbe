json.array!(@educations) do |education|
  json.extract! education, :id, :school, :yearInitial, :yearFinal, :graduated, :DocumentReceived, :average, :comments
  json.url education_url(education, format: :json)
end
