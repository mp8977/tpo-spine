if admin_signed_in?
  json.array!(@doctors) do |doctor|
    json.extract! doctor, :id, :doctorNumber, :category, :email, :lastName, :firstName, :phone, :hospital_id, :limitPatient, :deleted
    json.url doctor_url(doctor, format: :json)
  end
end
