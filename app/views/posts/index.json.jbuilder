json.array!(@posts) do |post|
  json.extract! post, :id, :postName, :postNumber, :deleted
  json.url post_url(post, format: :json)
end
