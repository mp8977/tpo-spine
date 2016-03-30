json.array!(@doctor_has_patients) do |doctor_has_patient|
  json.extract! doctor_has_patient, :id
  json.url doctor_has_patient_url(doctor_has_patient, format: :json)
end
