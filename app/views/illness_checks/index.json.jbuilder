json.array!(@illness_checks) do |illness_check|
  json.extract! illness_check, :id, :name
  json.url illness_check_url(illness_check, format: :json)
end
