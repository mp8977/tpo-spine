json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :doctorNumber, :category, :email, :lastName, :firstName, :phone, :limitPatient, :deleted
  json.url doctor_url(doctor, format: :json)
end
