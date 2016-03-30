json.array!(@diets) do |diet|
  json.extract! diet, :id, :dietNumber, :name
  json.url diet_url(diet, format: :json)
end
