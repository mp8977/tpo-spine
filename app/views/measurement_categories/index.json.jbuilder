json.array!(@measurement_categories) do |measurement_category|
  json.extract! measurement_category, :id, :name, :elements
  json.url measurement_category_url(measurement_category, format: :json)
end
