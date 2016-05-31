json.array!(@measurement_categories) do |measurement_category|
  json.extract! measurement_category, :id, :name, :elements, :deleted
  json.url measurement_category_url(measurement_category, format: :json)
end
