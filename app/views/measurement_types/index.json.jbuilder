json.array!(@measurement_types) do |measurement_type|
  json.extract! measurement_type, :id, :name, :min_value, :max_value, :deleted, :measurement_category_id
  json.url measurement_type_url(measurement_type, format: :json)
end
