json.array!(@nurses) do |nurse|
  json.extract! nurse, :id, :nurseNumber, :email, :password, :lastName, :firstName, :phone
  json.url nurse_url(nurse, format: :json)
end
