json.array!(@diet_checks) do |diet_check|
  json.extract! diet_check, :id, :name
  json.url diet_check_url(diet_check, format: :json)
end
