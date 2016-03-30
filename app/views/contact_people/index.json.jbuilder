json.array!(@contact_people) do |contact_person|
  json.extract! contact_person, :id, :lastName, :firstName, :phone, :relationship
  json.url contact_person_url(contact_person, format: :json)
end
