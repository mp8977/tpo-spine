module CheckUpsHelper
  def link_to_add_fields(name, f, association)
    if name == "Dodaj meritve za srce"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields = f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form)
      end
      link_to(name, '', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form)
      end
      link_to(name, '', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form)
      end
      link_to(name, '', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
    elsif name == "Dodaj meritve za glukozo"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields = f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form)
      end
      link_to(name, '', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
    end
  end
end
