if admin_signed_in?
  json.array!(@part_measurements) do |part_measurement|
    json.extract! part_measurement, :id, :name, :unit, :value, :measurement_id, :deleted
    json.url part_measurement_url(part_measurement, format: :json)
  end
end