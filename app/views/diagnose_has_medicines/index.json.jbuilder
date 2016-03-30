json.array!(@diagnose_has_medicines) do |diagnose_has_medicine|
  json.extract! diagnose_has_medicine, :id
  json.url diagnose_has_medicine_url(diagnose_has_medicine, format: :json)
end
