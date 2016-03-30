json.array!(@illnesses) do |illness|
  json.extract! illness, :id, :illnessNumber, :name, :isAllergy
  json.url illness_url(illness, format: :json)
end
