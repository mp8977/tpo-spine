# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#admin = Admin.create! :email => 'plut.car@gmail.com', :password => 'bizjak12', :password_confirmation => 'bizjak12'

post1 = Post.create! :postNumber => '1000', :postName => 'Ljubljana'
post2 = Post.create! :postNumber => '4270', :postName => 'Jesenice'
post3 = Post.create! :postNumber => '1215', :postName => 'Medvode'
post4 = Post.create! :postNumber => '6310', :postName => 'Izola - Isola'
post5 = Post.create! :postNumber => '1370', :postName => 'Logatec'
post6 = Post.create! :postNumber => '5282', :postName => 'Cerkno 404'
post7 = Post.create! :postNumber => '1330', :postName => 'Kocevje'
post8 = Post.create! :postNumber => '2250', :postName => 'Ptuj 127"'
post9 = Post.create! :postNumber => '3320', :postName => 'Velenje'
post10 = Post.create! :postNumber => '5270', :postName => 'Ajdovscina'

address1 = Address.create! :streetName => 'Sestova ulica', :streetNumber => '10', :post_id => '1'
address2 = Address.create! :streetName => 'Ulica Staneta Bokala', :streetNumber => '4', :post_id => '2'
address3 = Address.create! :streetName => 'Ostrovrharjeva ulica', :streetNumber => '6', :post_id => '3'
address4 = Address.create! :streetName => 'Polje', :streetNumber => '40', :post_id => '4'
address5 = Address.create! :streetName => 'Notranjska cesta', :streetNumber => '2', :post_id => '5'
address6 = Address.create! :streetName => 'Licarjeva', :streetNumber => '5', :post_id => '6'
address7 = Address.create! :streetName => 'Roska cesta', :streetNumber => '18', :post_id => '7'
address8 = Address.create! :streetName => 'Potrceva cesta', :streetNumber => '23', :post_id => '8'
address9 = Address.create! :streetName => 'Vodnikova cesta', :streetNumber => '1', :post_id => '9'
address10 = Address.create! :streetName => 'Tovarniska cesta', :streetNumber => '3', :post_id => '10'

h1 = Hospital.create! :hospitalNumber => '05600', :hospitalName => 'ZD LJUBLJANA - VIČ - RUDNIK', :address_id => '1'
h2 = Hospital.create! :hospitalNumber => '04201', :hospitalName => 'ZDRAVSTVENI DOM JESENICE', :address_id => '2'
h3 = Hospital.create! :hospitalNumber => '50501', :hospitalName => 'ZD MEDVODE', :address_id => '3'
h4 = Hospital.create! :hospitalNumber => '03821', :hospitalName => 'SPLOŠNA BOLNIŠNICA IZOLA OSPEDALE GENERALE ISOLA', :address_id => '4'
h5 = Hospital.create! :hospitalNumber => '07001', :hospitalName => 'ZD LOGATEC', :address_id => '5'
h6 = Hospital.create! :hospitalNumber => '06931', :hospitalName => 'ZD IDRIJA	', :address_id => '6'
h7 = Hospital.create! :hospitalNumber => '06651', :hospitalName => 'ZD KOČEVJE', :address_id => '7'
h8 = Hospital.create! :hospitalNumber => '07644', :hospitalName => 'BOLNIŠNICA PTUJ', :address_id => '8'
h9 = Hospital.create! :hospitalNumber => '09502', :hospitalName => 'ZDRAVSTVENI DOM VELENJE', :address_id => '9'
h10 = Hospital.create! :hospitalNumber => '00130', :hospitalName => 'ZDRAVSTVENI DOM AJDOVŠČINA', :address_id => '10'