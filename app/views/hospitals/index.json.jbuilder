if admin_signed_in?
  json.array!(@hospitals) do |hospital|
    json.extract! hospital, :id, :hospitalNumber, :hospitalName, :deleted, :address_id
    json.url hospital_url(hospital, format: :json)
  end
end