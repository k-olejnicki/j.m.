json.array!(@educations) do |education|
  json.extract! education, :id, :category, :description
  json.url education_url(education, format: :json)
end
