json.array!(@check_ups) do |check_up|
  json.extract! check_up, :id, :date
  json.url check_up_url(check_up, format: :json)
end
