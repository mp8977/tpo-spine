if admin_signed_in?
  json.array!(@measurements) do |measurement|
    json.extract! measurement, :id, :date, :deleted
    json.url measurement_url(measurement, format: :json)
  end
end
