json.array!(@posts) do |post|
  json.extract! post, :id, :postName, :postNumber
  json.url post_url(post, format: :json)
end
