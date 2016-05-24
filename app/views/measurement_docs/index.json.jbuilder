if admin_signed_in?
  json.array!(@measurement_docs) do |measurement_doc|
    json.extract! measurement_doc, :id, :check_up_id, :part_measurement_id, :deleted
    json.url measurement_doc_url(measurement_doc, format: :json)
  end
end