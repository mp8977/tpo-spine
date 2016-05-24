if admin_signed_in?
  json.array!(@medicines) do |medicine|
    json.extract! medicine, :id, :medicineNumber, :name, :inUse, :medicine_instruction_id
    json.url medicine_url(medicine, format: :json)
  end
end