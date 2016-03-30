json.array!(@measurement_docs) do |measurement_doc|
  json.extract! measurement_doc, :id
  json.url measurement_doc_url(measurement_doc, format: :json)
end
