if admin_signed_in?
  json.array!(@diets) do |diet|
    json.extract! diet, :id, :dietNumber, :name, :deleted
    json.url diet_url(diet, format: :json)
  end
end