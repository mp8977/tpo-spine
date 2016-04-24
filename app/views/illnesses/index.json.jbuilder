if admin_signed_in?
  json.array!(@illnesses) do |illness|
    json.extract! illness, :id, :illnessNumber, :name, :isAllergy, :deleted
    json.url illness_url(illness, format: :json)
  end
end