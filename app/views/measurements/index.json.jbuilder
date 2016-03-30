json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :date
  json.url measurement_url(measurement, format: :json)
end
