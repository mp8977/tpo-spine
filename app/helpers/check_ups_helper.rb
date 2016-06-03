module CheckUpsHelper
  def link_to_add_fields(name, f, name_of_category, association)
    st_elementov = MeasurementCategory.where(name: name_of_category).first.elements
    category_id = MeasurementCategory.where(name: name_of_category).first.id
    imena = []
    enote = []
    maxs = []
    mins = []
    MeasurementType.where(measurement_category_id: category_id, deleted: false).all.each do |m|
      imena.push(m.name)
      enote.push(m.unit)
      maxs.push(m.max_value)
      mins.push(m.min_value)
    end

    ids=Array.new
    fields = "<div class = 'form-box'>"
    for i in 0..(st_elementov-1)
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      ids.push(id)
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        ime = imena[i]
        enota = enote[i]
        min_value = mins[i]
        max_value = maxs[i]
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form,n: ime, u: enota, min: min_value, max: max_value)
      end
    end
    puts ids
    fields += "<br><button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button><br><br></div>"
    link_to(name, '', class: "add_fields btn btn-info btn-sm long", data: {no_turbolink: true,ids: ids, fields: fields.gsub("\n", "")})

  end
end