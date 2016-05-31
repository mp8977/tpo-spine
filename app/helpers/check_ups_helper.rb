module CheckUpsHelper
  def link_to_add_fields(name, f, association)
    if name == "Dodaj meritev za srce"
      st_elementov = MeasurementCategory.where(name: :srce).first.elements
      category_id = MeasurementCategory.where(name: :srce).first.id
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


      fields = "<div data-no-turbolink>"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id

      for i in 0..(st_elementov-1)
        fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
          ime = imena[i]
          enota = enote[i]
          min_value = mins[i]
          max_value = maxs[i]
          render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: ime, u: enota, min: min_value, max: max_value)
        end
      end

      fields += "<button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button><br><br></div>"
      link_to(name, '', class: "add_fields btn btn-info btn-xs", data: {no_turbolink: true,id: id, fields: fields.gsub("\n", "")})
    elsif name == "Dodaj meritev za glukozo"
      st_elementov = MeasurementCategory.where(name: :glukoza).first.elements
      category_id = MeasurementCategory.where(name: :glukoza).first.id
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

      fields = "<div data-no-turbolink>"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id

      for i in 0..(st_elementov-1)
        fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
          ime = imena[i]
          enota = enote[i]
          min_value = mins[i]
          max_value = maxs[i]
          render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: ime, u: enota, min: min_value, max: max_value)
        end
      end

      fields += "<button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button><br><br></div>"
      link_to(name, '', class: "add_fields btn btn-info btn-xs", data: {no_turbolink: true,id: id, fields: fields.gsub("\n", "")})
    elsif name == "Dodaj meritev za telesno temperaturo"
      st_elementov = MeasurementCategory.where(name: :temperatura).first.elements
      category_id = MeasurementCategory.where(name: :temperatura).first.id
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

      fields = "<div data-no-turbolink>"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id

      for i in 0..(st_elementov-1)
        fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
          ime = imena[i]
          enota = enote[i]
          min_value = mins[i]
          max_value = maxs[i]
          render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: ime, u: enota, min: min_value, max: max_value)
        end
      end

      fields += "<button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button><br><br></div>"
      link_to(name, '', class: "add_fields btn btn-info btn-xs", data: {no_turbolink: true,id: id, fields: fields.gsub("\n", "")})
    elsif name == "Dodaj meritev za telesno težo"
      st_elementov = MeasurementCategory.where(name: :teza).first.elements
      category_id = MeasurementCategory.where(name: :teza).first.id
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

      fields = "<div data-no-turbolink>"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id

      for i in 0..(st_elementov-1)
        fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
          ime = imena[i]
          enota = enote[i]
          min_value = mins[i]
          max_value = maxs[i]
          render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: ime, u: enota, min: min_value, max: max_value)
        end
      end

      fields += "<button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button><br><br></div>"
      link_to(name, '', class: "add_fields btn btn-info btn-xs", data: {no_turbolink: true,id: id, fields: fields.gsub("\n", "")})
    end
  end
end
