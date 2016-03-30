json.array!(@doctor_has_nurses) do |doctor_has_nurse|
  json.extract! doctor_has_nurse, :id
  json.url doctor_has_nurse_url(doctor_has_nurse, format: :json)
end
