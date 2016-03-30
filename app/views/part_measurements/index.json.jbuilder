json.array!(@part_measurements) do |part_measurement|
  json.extract! part_measurement, :id, :name, :unit, :value
  json.url part_measurement_url(part_measurement, format: :json)
end
