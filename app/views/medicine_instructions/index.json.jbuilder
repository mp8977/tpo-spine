json.array!(@medicine_instructions) do |medicine_instruction|
  json.extract! medicine_instruction, :id, :url_string, :deleted
  json.url medicine_instruction_url(medicine_instruction, format: :json)
end
