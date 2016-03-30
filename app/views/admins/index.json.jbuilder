json.array!(@admins) do |admin|
  json.extract! admin, :id, :password, :email
  json.url admin_url(admin, format: :json)
end
