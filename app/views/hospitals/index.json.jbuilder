json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :hospitalNumber, :hospitalName
  json.url hospital_url(hospital, format: :json)
end
