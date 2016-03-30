json.array!(@medicine_checks) do |medicine_check|
  json.extract! medicine_check, :id, :name
  json.url medicine_check_url(medicine_check, format: :json)
end
