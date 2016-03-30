json.array!(@addresses) do |address|
  json.extract! address, :id, :streetName, :streetNumber
  json.url address_url(address, format: :json)
end
