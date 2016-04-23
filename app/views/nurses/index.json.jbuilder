json.array!(@nurses) do |nurse|
  json.extract! nurse, :id, :nurseNumber, :email, :lastName, :firstName, :phone, :deleted
  json.url nurse_url(nurse, format: :json)
end
