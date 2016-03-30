json.array!(@patients) do |patient|
  json.extract! patient, :id, :cardNumber, :lastName, :firstName, :phone, :birthDate, :sex
  json.url patient_url(patient, format: :json)
end
