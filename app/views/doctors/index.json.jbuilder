json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :doctorNumber, :type, :email, :password, :lastName, :firstName, :phone, :limitPatient
  json.url doctor_url(doctor, format: :json)
end
