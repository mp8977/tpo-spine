json.array!(@measurement_homes) do |measurement_home|
  json.extract! measurement_home, :id
  json.url measurement_home_url(measurement_home, format: :json)
end
