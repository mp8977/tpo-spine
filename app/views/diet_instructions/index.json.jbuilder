json.array!(@diet_instructions) do |diet_instruction|
  json.extract! diet_instruction, :id, :url
  json.url diet_instruction_url(diet_instruction, format: :json)
end
