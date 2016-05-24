if admin_signed_in?
  json.array!(@measurement_homes) do |measurement_home|
    json.extract! measurement_home, :id, :patient_id, :part_measurement_id, :deleted
    json.url measurement_home_url(measurement_home, format: :json)
  end
end