module CheckUpsHelper
  def link_to_add_fields(name, f, association)
    if name == "Dodaj meritev za srce"
      fields = "<div  data-no-turbolink >"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: 'Srcni utrip', u: 'stevilo srcnih utripov v minuti')
      end
      #link_to(name, '', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: 'Sistolicni tlak', u: 'mmHg')
      end
      #link_to(name, '', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: 'Diastolicni tlak', u: 'mmHg')
      end
      fields += "<br><button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button></div><br>"
      link_to(name, '', class: "add_fields btn btn-info btn-xs", data: {no_turbolink: true, id: id, fields: fields.gsub("\n", "")})
    elsif name == "Dodaj meritev za glukozo"
      fields = "<div  data-no-turbolink >"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: 'Glukoza', u: 'mmol/L')
      end
      fields += "<br><button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button></div><br>"
      link_to(name, '', class: "add_fields btn btn-info btn-xs", data: {no_turbolink: true,id: id, fields: fields.gsub("\n", "")})
    elsif name == "Dodaj meritev za telesno temperaturo"
      fields = "<div  data-no-turbolink >"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: 'Temperatura', u: 'stopinj celzija')
      end
      fields += "<br><button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button></div><br>"
      link_to(name, '', class: "add_fields btn btn-info btn-xs", data: {no_turbolink: true,id: id, fields: fields.gsub("\n", "")})
    elsif name == "Dodaj meritev za telesno težo"
      fields = "<div  data-no-turbolink >"
      new_object = f.object.send(association).klass.new
      id = new_object.object_id
      fields += f.fields_for(association, new_object, child_index: id) do |measurement_docs_for_form|
        render(association.to_s.singularize + "_fields", f: measurement_docs_for_form, n: 'Teza', u: 'kg')
      end
      fields += "<br><button type='button' class='btn btn-danger btn-xs' onclick='removeElement(this.parentNode);'>Odstrani</button></div><br>"
      link_to(name, '', class: "add_fields ", data: {no_turbolink: true,id: id, fields: fields.gsub("\n", "")})
    end
  end
end
