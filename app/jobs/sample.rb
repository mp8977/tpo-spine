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
Dashing.scheduler.every '10s' do

end

series = [
    {
        name: "Convergence",
        data: [{x:1, y: 4}, {x:2, y:27}, {x:3, y:6}]
    },
    {
        name: "Divergence",
        data: [{x:1, y: 5}, {x:2, y:2}, {x:3, y:9}]
    }
]
Dashing.send_event('convergence', series: series)
=end

data = [
    { "x" => 1, "y" => 1323 },
    { "x" => 2, "y" => 53234 },
    { "x" => 3, "y" => 2344 }
]
Dashing.send_event(:market_value, points: data, displayedValue: data.first["y"])