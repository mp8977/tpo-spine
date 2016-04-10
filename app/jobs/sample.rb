=begin

require 'json'
patId=1
patient=Patient.find(patId)
patientInfo = [{label: patient.firstName},
               {label: patient.lastName},
               {label: patient.cardNumber},
               {label: patient.phone},
               {label: patient.birthDate}]
patientInfo = patientInfo.to_json
Dashing.send_event('patient',   { items: patientInfo })
Dashing.scheduler.every '1d' do

end
=end
