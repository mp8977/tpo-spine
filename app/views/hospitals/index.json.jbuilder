if admin_signed_in?
  json.array!(@hospitals) do |hospital|
    json.extract! hospital, :id, :hospitalNumber, :hospitalName, :deleted
    json.url hospital_url(hospital, format: :json)
  end
end