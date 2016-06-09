# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.create! :email => 'plut.car@gmail.com', :password => 'bizjak12', :password_confirmation => 'bizjak12'


post1 = Post.create! :postNumber => '1000', :postName => 'Ljubljana'
post2 = Post.create! :postNumber => '4270', :postName => 'Jesenice'
post3 = Post.create! :postNumber => '1215', :postName => 'Medvode'
post4 = Post.create! :postNumber => '6310', :postName => 'Izola - Isola'
post5 = Post.create! :postNumber => '1370', :postName => 'Logatec'
post6 = Post.create! :postNumber => '5282', :postName => 'Cerkno'
post7 = Post.create! :postNumber => '1330', :postName => 'Kocevje'
post8 = Post.create! :postNumber => '2250', :postName => 'Ptuj'
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


#naslovi za paciente
address11 = Address.create! :streetName => 'Cvetkova ulica', :streetNumber => '1', :post_id => '1'
address12 = Address.create! :streetName => 'Cesta železarjev', :streetNumber => '8', :post_id => '2'
address13 = Address.create! :streetName => 'Goričane', :streetNumber => '39', :post_id => '3'
address14 = Address.create! :streetName => 'Premrlova ulica', :streetNumber => '1', :post_id => '4'
address15 = Address.create! :streetName => 'Cankarjeva cesta', :streetNumber => '1', :post_id => '5'

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

#zdravniki
zdravnik1=Doctor.create! :email => 'marko.novak@gmail.com', :password => 'geslo123',:doctorNumber => '1234', :category => 'zdravnik',:lastName => 'Novak', :firstName => 'Marko', :phone => '031300300', :limitPatient => '4', :hospital_id => '1'
zdravnik2=Doctor.create! :email => 'luka.krajnc@gmail.com', :password => 'geslo123',:doctorNumber => '1235', :category => 'zdravnik',:lastName => 'Krajnc', :firstName => 'Luka', :phone => '031300301', :limitPatient => '1', :hospital_id => '2'
zdravnik3=Doctor.create! :email => 'andrej.zupan@gmail.com', :password => 'geslo123',:doctorNumber => '1236', :category => 'zdravnik',:lastName => 'Zupan', :firstName => 'Andrej', :phone => '031300302', :limitPatient => '3', :hospital_id => '3'
zdravnik4=Doctor.create! :email => 'janez.rozman@gmail.com', :password => 'geslo123',:doctorNumber => '1237', :category => 'zdravnik',:lastName => 'Rozman', :firstName => 'Janez', :phone => '031300303', :limitPatient => '1', :hospital_id => '4'
zdravnik5=Doctor.create! :email => 'matej.vidmar@gmail.com', :password => 'geslo123',:doctorNumber => '1238', :category => 'zdravnik',:lastName => 'Vidmar', :firstName => 'Matej', :phone => '031300304', :limitPatient => '3', :hospital_id => '5'
zdravnik6=Doctor.create! :email => 'jure.plestenjak@gmail.com', :password => 'geslo123',:doctorNumber => '1239', :category => 'zobozdravnik',:lastName => 'Vidmaric', :firstName => 'Matejko', :phone => '031300305', :limitPatient => '10', :hospital_id => '5'
zdravnik7=Doctor.create! :email => 'matej.panjan@gmail.com', :password => 'geslo123',:doctorNumber => '1240', :category => 'zobozdravnik',:lastName => 'Kolebar', :firstName => 'Miha', :phone => '031300306', :limitPatient => '10', :hospital_id => '6'
zdravnik8=Doctor.create! :email => 'filip.kosmac@gmail.com', :password => 'geslo123'
zdravnik9=Doctor.create! :email => 'luka.smukec@gmail.com', :password => 'geslo123'
zdravnik10=Doctor.create! :email => 'toni.gergera@gmail.com', :password => 'geslo123'

#sestre
nurse1=Nurse.create! :email => 'ana.horvat@gmail.com', :password => 'geslo123',:nurseNumber => '1239', :lastName => 'Horvat', :firstName => 'Ana', :phone => '031300400', :hospital_id => '1'
nurse2=Nurse.create! :email => 'mateja.zupanc@gmail.com', :password => 'geslo123',:nurseNumber => '1240', :lastName => 'Zupanc', :firstName => 'Mateja', :phone => '031300401', :hospital_id => '2'
nurse3=Nurse.create! :email => 'rebeka.jereb@gmail.com', :password => 'geslo123',:nurseNumber => '1241', :lastName => 'Jereb', :firstName => 'Rebeka', :phone => '031300402', :hospital_id => '3'
nurse4=Nurse.create! :email => 'maja.oblak@gmail.com', :password => 'geslo123',:nurseNumber => '1242', :lastName => 'Oblak', :firstName => 'Maja', :phone => '031300403', :hospital_id => '4'
nurse5=Nurse.create! :email => 'mojca.perko@gmail.com', :password => 'geslo123',:nurseNumber => '1243', :lastName => 'Perko', :firstName => 'Mojca', :phone => '031300404', :hospital_id => '5'
nurse6=Nurse.create! :email => 'marko.starec@gmail.com', :password => 'geslo123'
nurse7=Nurse.create! :email => 'anja.senja@gmail.com', :password => 'geslo123'
nurse8=Nurse.create! :email => 'vanja.mraz@gmail.com', :password => 'geslo123'
nurse9=Nurse.create! :email => 'sanja.vidmar@gmail.com', :password => 'geslo123'
nurse10=Nurse.create! :email => 'marina.peresnik@gmail.com', :password => 'geslo123'

#uporabniki
user1 = User.new(:email => "petra.furlan@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user2 = User.new(:email => "katja.vidic@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user3 = User.new(:email => "marjan.rupnik@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user4 = User.new(:email => "gregor.majcen@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user5 = User.new(:email => "rok.tomsic@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user6 = User.new(:email => "sanja.ogenj@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user7 = User.new(:email => "lea.smrekar@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user8 = User.new(:email => "matic.bizjak@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user9 = User.new(:email => "denis.skala@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user10 = User.new(:email => "gregor.podlogar@gmail.com", :password => "geslo123", :password_confirmation => "geslo123")
user1.skip_confirmation!
user2.skip_confirmation!
user3.skip_confirmation!
user4.skip_confirmation!
user5.skip_confirmation!
user6.skip_confirmation!
user7.skip_confirmation!
user8.skip_confirmation!
user9.skip_confirmation!
user10.skip_confirmation!
user1.save!
user2.save!
user3.save!
user4.save!
user5.save!
user6.save!
user7.save!
user8.save!
user9.save!
user10.save!

#pacienti
pacient1=Patient.create! :cardNumber => '1000', :lastName => 'Furlan', :firstName => 'Petra', :phone => '041400400', :birthDate => '1970-02-04',:sex => 'ženski', :user_id => '1', :address_id => '11'
pacient2=Patient.create! :cardNumber => '1001', :lastName => 'Vidic', :firstName => 'Katja', :phone => '041400401', :birthDate => '1961-03-05',:sex => 'ženski', :user_id => '2', :address_id => '12'
pacient3=Patient.create! :cardNumber => '1002', :lastName => 'Rupnik', :firstName => 'Marjan', :phone => '041400402', :birthDate => '1972-04-06',:sex => 'moški', :user_id => '3', :address_id => '13'
pacient4=Patient.create! :cardNumber => '1003', :lastName => 'Majcen', :firstName => 'Gregor', :phone => '041400403', :birthDate => '1973-05-07',:sex => 'moški', :user_id => '4', :address_id => '14'
pacient5=Patient.create! :cardNumber => '1004', :lastName => 'Tomšič', :firstName => 'Rok', :phone => '041400404', :birthDate => '1954-06-08',:sex => 'moški', :user_id => '5', :address_id => '15'

kontaktna1=ContactPerson.create! :lastName => 'Furlan', :firstName => 'Tomaž', :phone => '041400500', :relationship => 'mož', :patient_id => '1', :address_id => '11'
kontaktna2=ContactPerson.create! :lastName => 'Vidic', :firstName => 'Nika', :phone => '041400501', :relationship => 'hči', :patient_id => '2', :address_id => '12'
kontaktna3=ContactPerson.create! :lastName => 'Rupnik', :firstName => 'Tjaša', :phone => '041400502', :relationship => 'sestra', :patient_id => '3', :address_id => '13'
kontaktna4=ContactPerson.create! :lastName => 'Majcen', :firstName => 'Polona', :phone => '041400503', :relationship => 'žena', :patient_id => '4', :address_id => '14'
kontaktna5=ContactPerson.create! :lastName => 'Tomšič', :firstName => 'Nejc', :phone => '041400504', :relationship => 'sin', :patient_id => '5', :address_id => '15'

dHasP1=DoctorHasPatient.create! :patient_id => '1', :doctor_id => '1'
dHasP2=DoctorHasPatient.create! :patient_id => '2', :doctor_id => '1'
dHasP3=DoctorHasPatient.create! :patient_id => '3', :doctor_id => '1'
dHasP4=DoctorHasPatient.create! :patient_id => '4', :doctor_id => '2'
dHasP5=DoctorHasPatient.create! :patient_id => '5', :doctor_id => '3'



d1 = Diet.create! :name => 'Dieta pri celiakiji', :dietNumber => 'D001'
d2 = Diet.create! :name => 'Dieta za ledvične bolnike', :dietNumber => 'D002'
d3 = Diet.create! :name => 'Dieta pri refluksni bolezni', :dietNumber => 'D003'
d4 = Diet.create! :name => 'Dieta za sladkorne bolnike', :dietNumber => 'D004'
d5 = Diet.create! :name => 'Dieta za znižanje holesterola', :dietNumber => 'D005'
d6= Diet.create! :name => 'Prehrana pri driski', :dietNumber => 'D006'
d7= Diet.create! :name => 'Dieta za znižanje trigliceridov', :dietNumber => 'D007'
d8 = Diet.create! :name => 'Dieta pri boleznih jeter', :dietNumber => 'D008'
d9 = Diet.create! :name => 'Dieta pri boleznih želodca in dvanajstnika', :dietNumber => 'D009'


dietins1=DietInstruction.create! :url_string => 'http://www.drustvo-celiakija.si/celiakija', :diet_id => '1'
dietins2=DietInstruction.create! :url_string => 'http://www.zveza-dlbs.si/Prehrana.html', :diet_id => '2'
dietins3=DietInstruction.create! :url_string => 'http://www.kclj.si/dokumenti/000203-0002f9.pdf',:diet_id => '3'
dietins4=DietInstruction.create! :url_string => 'http://www.diabetes-zveza.si/uploads/SB95_julij12clanki1.pdf', :diet_id => '4'
dietins5=DietInstruction.create! :url_string => 'http://www.ezdravje.com/srce-in-zilje/druge-bolezni-srca-in-zilja/sladkorna-bolezen/?s=9',:diet_id=>'4'
dietins6=DietInstruction.create! :url_string => 'http://www.sladkorcki.si/media/docs/Prehrana_pri_SB.pdf',:diet_id=> '4'
dietins7=DietInstruction.create! :url_string => 'http://www.lek.si/si/skrb-za-zdravje/bolezni-in-simptomi/srce-ozilje/diete-holesterol/',:diet_id=>'5'
dietins8=DietInstruction.create! :url_string => 'http://www.krka.si/media/prk/dokumenti/0577_dieta_ob_povisanem_holesterolu.pdf', :diet_id=> '5'
dietins9=DietInstruction.create! :url_string => 'http://www.nasa-lekarna.si/clanki/clanek/skuhaj-olupi-ali-pusti/', :diet_id => '6'
dietins10=DietInstruction.create! :url_string => 'http://www.dolenjske-lekarne.si/novice/samozdravljenje-driske', :diet_id=>'6'
dietins11=DietInstruction.create! :url_string => 'http://www.ave.si/novice/prehrana-pri-povisanih-trigliceridih', :diet_id=>'7'
dietins12=DietInstruction.create! :url_string => 'http://www.kclj.si/dokumenti/000203-0002fe.pdf', :diet_id=> '8'
dietins13=DietInstruction.create! :url_string => 'http://www.kclj.si/dokumenti/000203-0002f6.pdf', :diet_id=> '9'



i1 = Illness.create! :name => 'Esencialna hipertenzija', :illnessNumber => 'I10', :isAllergy => false
i2 = Illness.create! :name => 'Hipertenzivna srčna bolezen z (zastojno) srčno odpovedjo', :illnessNumber => 'I11', :isAllergy => false
i3 = Illness.create! :name => 'Diabetes tip 2', :illnessNumber => 'E11', :isAllergy => false
i4 = Illness.create! :name => 'Diabetes tip 1', :illnessNumber => 'E10', :isAllergy => false
i5 = Illness.create! :name => 'Gastritis', :illnessNumber => 'K29', :isAllergy => false
i6 = Illness.create! :name => 'Bolečina v trebuhu ali medenici', :illnessNumber => 'R10.0', :isAllergy => false
i7 = Illness.create! :name => 'Hiperplazija prostate', :illnessNumber => 'N40', :isAllergy => false
i8 = Illness.create! :name => 'Hipotiroza (druge vrste)', :illnessNumber => 'E03', :isAllergy => false
i9 = Illness.create! :name => 'Cistitis (vnetja sečnega mehurja)', :illnessNumber => 'N30', :isAllergy => false
i10 = Illness.create! :name => 'Hiperholesterolemija', :illnessNumber => 'E78.0', :isAllergy => false
i11 = Illness.create! :name => 'Gripa, virus ni dokazan', :illnessNumber => 'J11', :isAllergy => false
i12 = Illness.create! :name => 'Panična anksiozna motnja', :illnessNumber => 'F41.0', :isAllergy => false
i13 = Illness.create! :name => 'Zmerna depresivna motnja', :illnessNumber => 'F32.1', :isAllergy => false
i14 = Illness.create! :name => 'Alergijski rinitis zaradi peloda', :illnessNumber => 'J30.1', :isAllergy => false
i15 = Illness.create! :name => 'Glavkom', :illnessNumber => 'H40', :isAllergy => false
i16 = Illness.create! :name => 'Akutno serozno vnetje srednjega ušesa', :illnessNumber => 'H65.0', :isAllergy => false
i17 = Illness.create! :name => 'Aortna (valvularna) stenoza', :illnessNumber => 'I35.0', :isAllergy => false
i18 = Illness.create! :name => 'Impotenca organskega izvora', :illnessNumber => 'N48.4', :isAllergy => false
i19 = Illness.create! :name => 'Gastroezofagealna refluksna bolezen (GERB)', :illnessNumber => 'K21', :isAllergy => false
i20 = Illness.create! :name => 'Razjeda na želodcu', :illnessNumber => 'K25', :isAllergy => false
i21 = Illness.create! :name => 'Limfatična levkemija', :illnessNumber => 'C91', :isAllergy => false
i22 = Illness.create! :name => 'Mieloična levkemija', :illnessNumber => 'C92', :isAllergy => false
i23 = Illness.create! :name => 'Zlom spodnjega dela koželjnice Bolečine', :illnessNumber => 'S52.5', :isAllergy => false, :deleted => true


alergija1=Illness.create! :isAllergy => true, :illnessNumber =>'D69.0',:name => 'Alergijska purpura'
alergija2=Illness.create! :isAllergy => true, :illnessNumber =>'J30.1',:name =>'Alergijsi rinitis zaradi peloda'
alergija3=Illness.create! :isAllergy => true, :illnessNumber =>'J45.0', :name =>'Pretežno alergijska astma'
alergija4=Illness.create! :isAllergy => true, :illnessNumber =>'K 52.2',:name =>'Alergijske in dietetični gastroenteritis in kolitis'
alergija5=Illness.create! :isAllergy => true, :illnessNumber =>'L23',:name =>'Alergijski konatktni dermatitis'
alergija6=Illness.create! :isAllergy => true, :illnessNumber =>'L50.0', :name =>'Preobčutljivostna koprivnica (alergijska urtikarija)'
alergija7=Illness.create! :isAllergy => true, :illnessNumber =>'T78.4', :name =>'Alergija, neopredeljena'
alergija8=Illness.create! :isAllergy => true, :illnessNumber =>'Z88.0',:name =>'Osebna anamneza alergije na penicilin'





mi1=MedicineInstruction.create! :url_string => 'http://www.vitabalans.com/index.php?id=zopitin0004'
mi2=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/F2D46D0FDF63B711C12579C2003F5E1A/$File/a-016418.pdf'
mi3=MedicineInstruction.create! :url_string => 'http://www.krka.si/sl/zdravila-in-izdelki/zdravila-na-recept/enap/1323/#title'
mi4=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/68FDAEEE845A0E52C12579C2003F563B/$File/a-016414.pdf'
mi5=MedicineInstruction.create! :url_string => 'http://si.draagle.com/#!/drug/kzk/?sub=10'
mi6=MedicineInstruction.create! :url_string => 'http://www.lek.si/si/zdravila/na-recept/pakiranje/5862/'
mi7=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/C393D32B6CCD5421C12579EC00200928/$File/a-009508.pdf'
mi8=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/65930B0D5833253BC1257C780004AF95/$File/a-013730.pdf'
mi9=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/73A663A39EB07033C12579C2003F5EE2/$File/a-014615.pdf'
mi10=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/06C4EB4CE17A2068C1257C780004B023/$File/a-013839.pdf'
mi11=MedicineInstruction.create! :url_string => 'http://www.medis.si/fileadmin/medis/medis.si/docs/Navodilo_za_uporabo_Aglurab_SI.pdf'
mi12=MedicineInstruction.create! :url_string => 'http://si.draagle.com/#!/greader/?file=http%3A%2F%2Fskrito.draagle.com%2Fmedia%2Fd%2Fpil%2F040886_pil.pdf'
mi13=MedicineInstruction.create! :url_string => 'https://mediately.co/si/drugs/WjSUunNJrYrsXmP7DiMg2FANnb9/belformin-500-mg-filmsko-oblozene-tablete'
mi14=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/C35AF3CC02742C17C12579EC0020018C/$File/a-007344.pdf'

mi16=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/4FC2A54BA1DBA6A0C12579C2003F6956/$File/a-020018.pdf'
mi17=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/1D5A54DC62638DE6C12579C2003F61CD/$File/a-014628.pdf'
mi18=MedicineInstruction.create! :url_string => 'https://www.diagnosia.com/si/zdravila/actrapid-100-ieml-raztopina-za-injiciranje-v-viali'
mi19=MedicineInstruction.create! :url_string => 'https://www.diagnosia.com/si/zdravila/actrapid-flexpen-100-ieml-raztopina-za-injiciranje-v-napolnjenem-injekcijskem-peresniku'
mi20=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/5536585C91748BDFC12579C2003F5D63/$File/a-012384.pdf'
mi21=MedicineInstruction.create! :url_string => 'https://myhealthbox.eu/fr/view/1697664/a841ce6cfa958e9d21d2636b18e07e8c/leaflet'
mi22=MedicineInstruction.create! :url_string => 'http://www.diagnosia.com/si/zdravila/mixtard-30-novolet-100-ieml-suspenzija-za-injiciranje-v-napolnjenem-injekcijskem-peresniku'
mi23=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/C3E218A9243FF5E9C1257C310004BB75?opendocument'
mi24=MedicineInstruction.create! :url_string => 'http://www.lek.si/si/zdravila/brez-recepta/ranital-s-150/'
mi25=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/017078003F4E9B32C1257CC90083116E/$File/a-014247.pdf'
mi26=MedicineInstruction.create! :url_string => 'http://data.zdravila.net/pdf/a-010513.pdf'
mi27=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/7C3C54F51BD29C59C12579C2003F63EF?opendocument'
mi28=MedicineInstruction.create! :url_string => 'http://si.draagle.com/#!/greader/?file=http%3A%2F%2Fskrito.draagle.com%2Fmedia%2Fd%2Fpil%2F105864_pil.pdf'
mi29=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/374B2D55A7D6E43AC12579EC002008A5/$File/a-016035.pdf'
mi30=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/CD18459F93237B13C12579C2003F68AF/$File/a-015652.pdf'
mi31=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/B940B7C0F083BE58C12579C2003F637A/$File/a-015072.pdf'
mi32=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/3291459E7EB4AD14C1257CB400833420?opendocument'
mi33=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/2ABD62F024313965C12579C2003F5CBB/$File/a-012092.pdf'
mi34=MedicineInstruction.create! :url_string => 'http://si.draagle.com/#!/source/ljn/?drug=ljo'
mi35=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/6151BEF7B09CA95AC12579C2003F5062?opendocument'
mi36=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/44DDA83404E35C16C12579C2003F533A/$File/a-015920.pdf'
mi37=MedicineInstruction.create! :url_string => 'http://www.lek.si/si/zdravila/na-recept/pakiranje/1692/'
mi38=MedicineInstruction.create! :url_string => 'http://www.lek.si/si/zdravila/na-recept/pakiranje/433/'
mi39=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/F52A113BA34EB9E3C12579EC00200024?opendocument'
mi40=MedicineInstruction.create! :url_string => 'http://www.krka.si/sl/zdravila-in-izdelki/zdravila-na-recept/sorvastatablete/1673/'
mi41=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/EBA7391D45C8FEBDC12579EC0020021A/$File/a-014601.pdf'
mi42=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/A2118DFEC432DB52C12579EC00200204/$File/a-016289.pdf'
mi43=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/1B374BA216FAD256C12579C2003F6932?opendocument'
mi44=MedicineInstruction.create! :url_string => 'http://www.lek.si/si/zdravila/brez-recepta/lekadol-filmsko-oblozene-tablete/'
mi45=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/74B2434C07A44F18C12579C2003F4B3E/$File/a-011568.pdf'
mi46=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/8BA9838F72FB4FA4C12579EC001FFABB?opendocument'
mi47=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/4D14143C7F6E1F04C1257C620004CDD8/$File/a-016095.pdf'
mi48=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/97D3848355D4ABDAC12579C2003F5CDE/$File/a-015216.pdf'
mi49=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/C8122F0572FA7141C12579EC001FFF17/$File/a-600695.pdf'
mi50=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/FCD99A29EDCF611EC12579F900492129/$File/a-016002.pdf'
mi51=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/5C58B200098CB5A2C12579C2003F53E1?opendocument'
mi52=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/1AF7CA6F1A775F6BC12579C2003F53C6/$File/a-015373.pdf'
mi53=MedicineInstruction.create! :url_string => 'http://www.krka.si/sl/zdravila-in-izdelki/zdravila-na-recept/apaurintablete/1287/'
mi54=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/0049AAE59E3AA8D3C12579C2003F532C?opendocument'
mi55=MedicineInstruction.create! :url_string => 'http://www.lek.si/si/zdravila/na-recept/pakiranje/5775/'
mi56=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/8911B2FE3FFF0EF2C12579EC001FF931/$File/a-016214.pdf'
mi57=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/A9B3E333AEC06FBEC12579EC001FFC93/$File/a-016422.pdf'
mi58=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/C0CAA315ECDB0887C1257CC90083113C/$File/a-016017.pdf'
mi59=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/011783EE948D7D8FC12579EC00200501/$File/a-016059.pdf'
mi60=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/90DBE9EE574E4B0BC12579EC00200012/$File/a-016440.pdf'

mi62=MedicineInstruction.create! :url_string => 'http://www.zdravila.net/navodilo.php?navodilo=s-005819.pdf&d'
mi63=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/63B2B4273D302F22C12579C2003F4E25/$File/a-016266.pdf'
mi64=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/031488B8CE92CA7AC1257BAC0083438E/$File/a-014109.pdf'
mi65=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/871247132BF7287FC12579EC0020072B/$File/a-011732.pdf'
mi66=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/85571397365F09F1C12579EC001FF803?opendocument'
mi67=MedicineInstruction.create! :url_string => 'http://www.lekarnar.com/izdelki/claritine-s-tablete'
mi68=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/DA55403BA60DE053C12579EC001FF806/$File/a-013832.pdf'
mi69=MedicineInstruction.create! :url_string => 'https://www.lekarna24ur.com/public/upload/dokumenti/Rinolan_navodilo_pdf.pdf'
mi70=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/A3DFEF2F17A035ACC1257D1600831212?opendocument'
mi71=MedicineInstruction.create! :url_string => 'https://www.diagnosia.com/si/zdravila/lumigan-01-mgml-kapljice-za-oko-raztopina'
mi72=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/727DB8859728BBDEC12579F90049223E/$File/a-016139.pdf'
mi73=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/86C91BB4FE577DACC12579EC00200369/$File/a-014453.pdf'
mi74=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/159103D546E2C185C12579EC00200367/$File/a-020005.pdf'
mi75=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/2F6CCCC907EB6078C12579C2003F514E?opendocument'
mi76=MedicineInstruction.create! :url_string => 'http://www.lek.si/si/zdravila/na-recept/pakiranje/89/'
mi77=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/1FFC4EAA3F7319EEC1257EAB00837141/$File/a-015915.pdf'
mi78=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/1C2B687B0E1FB855C12579C2003F6948/$File/a-016157.pdf'
mi79=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/582412352E8F356CC12579C2003F58F2?opendocument'
mi80=MedicineInstruction.create! :url_string => 'http://www.lek.si/si/zdravila/na-recept/pakiranje/198/'
mi81=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/C78700915441F103C12579EC002001C7?opendocument'
mi82=MedicineInstruction.create! :url_string => 'https://www.diagnosia.com/si/zdravila/sildenafil-teva-100-mg-filmsko-oblozene-tablete'
mi83=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/396405FCEAF6D06DC12579EC001FFD67/$File/a-014664.pdf'
mi84=MedicineInstruction.create! :url_string => 'https://www.diagnosia.com/si/zdravila/viagra-50-mg-filmsko-oblozene-tablete'
mi85=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/16D4CBF7CC46F980C12579C2003F67F1/$File/a-016396.pdf'
mi86=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/C780D3BD9FE393DAC12579C2003F50BD/$File/a-015817.pdf'
mi87=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/520C2C9888BDDC6CC12579C2003F6677/$File/a-016474.pdf'
mi88=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/33C7A15D9E906947C12579C2003F4EB7/$File/a-015564.pdf'

mi90=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/AE0A1FEA862CC338C12579C2003F5986/$File/a-014527.pdf'





mi96=MedicineInstruction.create! :url_string => 'http://rxed.eu/sl/g/Glivec/5/'
mi97=MedicineInstruction.create! :url_string => 'http://rxed.eu/sl/i/Imatinib+Teva/5/'
mi98=MedicineInstruction.create! :url_string => 'http://www.cbz.si/cbz/bazazdr2.nsf/o/9F5DD2DFF700BFEDC1257B4B00836C1C/$File/a-013808.pdf'


m1 = Medicine.create! :name => 'Enalapril Vitabalans 10 mg tbl', :medicineNumber => '082392', :inUse => true,:medicine_instruction_id => '1'
m2 = Medicine.create! :name => 'Piramil 10 mg tbl', :medicineNumber => '016470', :inUse => true,:medicine_instruction_id => '2'
m3 = Medicine.create! :name => 'Enap 10 mg tbl', :medicineNumber => '028479', :inUse => true,:medicine_instruction_id =>'3'
m4 = Medicine.create! :name => 'Olivin 10 mg tbl', :medicineNumber => '059064', :inUse => true,:medicine_instruction_id =>'4'
m5 = Medicine.create! :name => 'Concor 5 mg tbl', :medicineNumber => '011444', :inUse => true,:medicine_instruction_id =>'5'
m6 = Medicine.create! :name => 'Byol 5 mg tbl', :medicineNumber => '115746', :inUse => true,:medicine_instruction_id =>'6'
m7 = Medicine.create! :name => 'Borez 5 mg tbl', :medicineNumber => '129607', :inUse => true,:medicine_instruction_id =>'7'
m8 = Medicine.create! :name => 'Concordina 5 mg/5 mg tbl', :medicineNumber => '146097', :inUse => true,:medicine_instruction_id =>'8'
m9 = Medicine.create! :name => 'Lodoz 5 mg/6,25 mg tbl', :medicineNumber => '060755', :inUse => true,:medicine_instruction_id =>'9'
m10 = Medicine.create! :name => 'Sobycor 5 mg tbl', :medicineNumber => '146144', :inUse => true,:medicine_instruction_id =>'10'
m11 = Medicine.create! :name => 'Aglurab 1000 mg tbl', :medicineNumber => '144343', :inUse => true,:medicine_instruction_id =>'11'
m12 = Medicine.create! :name => 'Glucophage 1000 mg tbl', :medicineNumber => '040886', :inUse => true,:medicine_instruction_id =>'12'
m13 = Medicine.create! :name => 'Belformin 500 mg tbl', :medicineNumber => '145137', :inUse => true,:medicine_instruction_id =>'13'
m14 = Medicine.create! :name => 'Formagliben 500 mg/2,5 mg tbl', :medicineNumber => '108375', :inUse => true,:medicine_instruction_id =>'14'

m16 = Medicine.create! :name => 'Metfogamma 1000 mg tbl', :medicineNumber => '042021', :inUse => true,:medicine_instruction_id =>'15'
m17 = Medicine.create! :name => 'Siofor 1000 mg tbl', :medicineNumber => '025550', :inUse => true,:medicine_instruction_id =>'16'
m18 = Medicine.create! :name => 'Actrapid 100 i.e. Raztopina za injiciranje v viali', :medicineNumber => '030619', :inUse => true,:medicine_instruction_id =>'17'
m19 = Medicine.create! :name => 'Actrapid FlexPen 100 i.e. Raztopina za injiciranje v napolnjenem injekcijskem peresniku', :medicineNumber => '051101', :inUse => true,:medicine_instruction_id =>'18'
m20= Medicine.create! :name => 'Humulin M3 100 i.e./ml suspenzija za injiciranje v vložku', :medicineNumber => '095990', :inUse => true,:medicine_instruction_id =>'19'
m21= Medicine.create! :name => 'Insuman Rapid 100 i.e./ml OptiSet raztopina za injiciranje', :medicineNumber => '030147', :inUse => true,:medicine_instruction_id =>'20'
m22= Medicine.create! :name => 'Mixtard 10 NovoLet 100 i.e./ml suspenzija za injiciranje v napolnjenem injekcijskem peresniku', :medicineNumber => '019534', :inUse => true,:medicine_instruction_id =>'21'
m23= Medicine.create! :name => 'Ranitidin Accord 150 mg tbl', :medicineNumber => '145976', :inUse => true,:medicine_instruction_id =>'22'
m24= Medicine.create! :name => 'Ranital 150 mg tbl', :medicineNumber => '071684', :inUse => true,:medicine_instruction_id =>'23'
m25= Medicine.create! :name => 'Metamizol STADA 500 mg/ml peroralne kapljice, raztopina', :medicineNumber => '146311', :inUse => true,:medicine_instruction_id =>'24'
m26= Medicine.create! :name => 'Analgin 500 mg tbl', :medicineNumber => '000191', :inUse => true,:medicine_instruction_id =>'25'
m27= Medicine.create! :name => 'Omnic Ocas 0,4 mg tbl', :medicineNumber => '038695', :inUse => true,:medicine_instruction_id =>'26'
m28= Medicine.create! :name => 'Combodart 0,5 mg/0,4mg kaps', :medicineNumber => '105864', :inUse => true,:medicine_instruction_id =>'27'
m29= Medicine.create! :name => 'Miktan 0,4 mg tbl', :medicineNumber => '128333', :inUse => true,:medicine_instruction_id =>'28'
m30= Medicine.create! :name => 'Morvesin 0,4 mg trde kapsule', :medicineNumber => '033880', :inUse => true,:medicine_instruction_id =>'29'
m31= Medicine.create! :name => 'Tanyz 0,4 mg trde kapsule', :medicineNumber => '038245', :inUse => true,:medicine_instruction_id =>'30'
m32= Medicine.create! :name => 'Dicitirox 50 mg tbl', :medicineNumber => '146102', :inUse => true,:medicine_instruction_id =>'31'
m33= Medicine.create! :name => 'Eltroxin 50 mg tbl', :medicineNumber => '092010', :inUse => true,:medicine_instruction_id =>'32'
m34= Medicine.create! :name => 'Euthyrox 50 mg tbl', :medicineNumber => '023442', :inUse => true,:medicine_instruction_id =>'33'
m35= Medicine.create! :name => 'Ciprobay 500 mg tbl', :medicineNumber => '022454', :inUse => true,:medicine_instruction_id =>'34'
m36= Medicine.create! :name => 'Ciprinol 500 mg tbl', :medicineNumber => '040398', :inUse => true,:medicine_instruction_id =>'35'
m37= Medicine.create! :name => 'Ciprofloksacin Lek 500 mg tbl', :medicineNumber => '086029', :inUse => true,:medicine_instruction_id =>'36'
m38= Medicine.create! :name => 'Primotren 80mg/ 400 mg tbl', :medicineNumber => '069418', :inUse => true,:medicine_instruction_id =>'37'
m39= Medicine.create! :name => 'Coupet 20 mg tbl', :medicineNumber => '104426', :inUse => true,:medicine_instruction_id =>'38'
m40= Medicine.create! :name => 'Sorvasta 20 mg tbl', :medicineNumber => '109827', :inUse => true,:medicine_instruction_id =>'39'
m41= Medicine.create! :name => 'Vosustat 20 mg tbl', :medicineNumber => '109932', :inUse => true,:medicine_instruction_id =>'40'
m42= Medicine.create! :name => 'Rosuvastatin Teva 20 mg tbl', :medicineNumber => '109690', :inUse => true,:medicine_instruction_id =>'41'
m43= Medicine.create! :name => 'Daleron 500 mg tbl', :medicineNumber => '034487', :inUse => true,:medicine_instruction_id =>'42'
m44= Medicine.create! :name => 'Lekadol 500 mg tbl', :medicineNumber => '055654', :inUse => true,:medicine_instruction_id =>'43'
m45= Medicine.create! :name => 'Calpol 250 mg/5 ml peroralna suspenzija', :medicineNumber => '002739', :inUse => true,:medicine_instruction_id =>'44'
m46= Medicine.create! :name => 'Doreta 37,5 mg/325 mg', :medicineNumber => '072940', :inUse => true,:medicine_instruction_id =>'45'
m47= Medicine.create! :name => 'Ibuem 250 mg/250 mg/50 mg tbl', :medicineNumber => '146066', :inUse => true,:medicine_instruction_id =>'46'
m48= Medicine.create! :name => 'Panadol 500 mg tbl', :medicineNumber => '093351', :inUse => true,:medicine_instruction_id =>'47'
m49= Medicine.create! :name => 'Paracetamol svečke 500 mg(Lekarne Ljubljana)', :medicineNumber => '600695', :inUse => true,:medicine_instruction_id =>'48'
m50= Medicine.create! :name => 'Tevitamol 500 mg tablete', :medicineNumber => '136058', :inUse => true,:medicine_instruction_id =>'49'
m51= Medicine.create! :name => 'Lexaurin 3 mg tbl', :medicineNumber => '046124', :inUse => true,:medicine_instruction_id =>'50'
m52= Medicine.create! :name => 'Lekotam 3 mg tbl', :medicineNumber => '045136', :inUse => true,:medicine_instruction_id =>'51'
m53= Medicine.create! :name => 'Apaurin 10 mg tbl', :medicineNumber => '019348', :inUse => true,:medicine_instruction_id =>'52'
m54= Medicine.create! :name => 'Cipralex 10 mg', :medicineNumber => '040096', :inUse => true,:medicine_instruction_id =>'53'
m55= Medicine.create! :name => 'Citafort 10 mg tbl', :medicineNumber => '125610', :inUse => true,:medicine_instruction_id =>'54'
m56= Medicine.create! :name => 'Ecytara 10 mg tbl', :medicineNumber => '058793', :inUse => true,:medicine_instruction_id =>'55'
m57= Medicine.create! :name => 'Elicea 10 mg tbl', :medicineNumber => '085685', :inUse => true,:medicine_instruction_id =>'56'
m58= Medicine.create! :name => 'Escitalopram Krka 10 mg tbl', :medicineNumber => '146299', :inUse => true,:medicine_instruction_id =>'57'
m59= Medicine.create! :name => 'Otigem 10 mg tbl', :medicineNumber => '118460', :inUse => true,:medicine_instruction_id =>'58'
m60= Medicine.create! :name => 'Solatcit 10 mg tbl', :medicineNumber => '104213', :inUse => true,:medicine_instruction_id =>'59'

m62= Medicine.create! :name => 'Tramal 150 mg tbl', :medicineNumber => '012114', :inUse => true,:medicine_instruction_id =>'60'
m63= Medicine.create! :name => 'Tadol 100 mg tbl s podaljšanim sproščanjem', :medicineNumber => '012084', :inUse => true,:medicine_instruction_id =>'61'
m64= Medicine.create! :name => 'Tramadol Vitabalans 50 mg tbl', :medicineNumber => '145499', :inUse => true,:medicine_instruction_id =>'62'
m65= Medicine.create! :name => 'Zaracet 37,5 mg/325 mg tbl', :medicineNumber => '124680', :inUse => true,:medicine_instruction_id =>'63'
m66= Medicine.create! :name => 'Flonidan 10 mg', :medicineNumber => '020583', :inUse => true,:medicine_instruction_id =>'64'
m67= Medicine.create! :name => 'Claritine S 10 mg tbl', :medicineNumber => '062987', :inUse => true,:medicine_instruction_id =>'65'
m68= Medicine.create! :name => 'Florgan 10 mg orodisperzibilne tbl', :medicineNumber => '051420', :inUse => true,:medicine_instruction_id =>'66'
m69= Medicine.create! :name => 'Rinolan 10 mg tablete', :medicineNumber => '058238', :inUse => true,:medicine_instruction_id =>'67'
m70= Medicine.create! :name => 'Bimatoprost Sandoz 0,3 mg/ml kapljice', :medicineNumber => '146530', :inUse => true,:medicine_instruction_id =>'68'
m71= Medicine.create! :name => 'Lumigan 0,1 mg/ml kapljice', :medicineNumber => '102229', :inUse => true,:medicine_instruction_id =>'69'
m72= Medicine.create! :name => 'Brimonidin Medops 2 mg/ml kapljice za oko', :medicineNumber => '139603', :inUse => true,:medicine_instruction_id =>'70'
m73= Medicine.create! :name => 'Timalen 2,5 mg/ml kapljice za oko, raztopina', :medicineNumber => '114022', :inUse => true,:medicine_instruction_id =>'71'
m74= Medicine.create! :name => 'Latanox 50 mg/ml kapljice za oko', :medicineNumber => '114006', :inUse => true,:medicine_instruction_id =>'72'
m75= Medicine.create! :name => 'Hiconcil 500 mg trde kapsule', :medicineNumber => '025666', :inUse => true,:medicine_instruction_id =>'73'
m76= Medicine.create! :name => 'Amoksiklav 500mg/125mg tbl', :medicineNumber => '069280', :inUse => true,:medicine_instruction_id =>'74'
m77= Medicine.create! :name => 'Betaklav 500 mg/125 mg tbl', :medicineNumber => '147056', :inUse => true,:medicine_instruction_id =>'75'
m78= Medicine.create! :name => 'Ospamox 500 mg disperzibilne tbl', :medicineNumber => '041866', :inUse => true,:medicine_instruction_id =>'76'
m79= Medicine.create! :name => 'Lasix 40 mg tbl', :medicineNumber => '072656', :inUse => true,:medicine_instruction_id =>'77'
m80= Medicine.create! :name => 'Edemid 40 mg tbl', :medicineNumber => '026778', :inUse => true,:medicine_instruction_id =>'78'
m81= Medicine.create! :name => 'Belfil 50 mg tbl', :medicineNumber => '108995', :inUse => true,:medicine_instruction_id =>'79'
m82= Medicine.create! :name => 'Sildenafil Teva 100 mg tbl', :medicineNumber => '097420', :inUse => true,:medicine_instruction_id =>'80'
m83= Medicine.create! :name => 'Tornetis 100 mg tbl', :medicineNumber => '091782', :inUse => true,:medicine_instruction_id =>'81'
m84= Medicine.create! :name => 'Viagra 50 mg tbl', :medicineNumber => '093564', :inUse => true,:medicine_instruction_id =>'82'
m85= Medicine.create! :name => 'Acipan 20 mg gastrorezistentne tbl', :medicineNumber => '028622', :inUse => true,:medicine_instruction_id =>'83'
m86= Medicine.create! :name => 'Controloc 20 mg gastrorezistentne tbl', :medicineNumber => '023507', :inUse => true,:medicine_instruction_id =>'84'
m87= Medicine.create! :name => 'Nolpaza 20 mg gastrorezistentne tbl', :medicineNumber => '013200', :inUse => true,:medicine_instruction_id =>'85'
m88= Medicine.create! :name => 'Nexium 20 mg gastrorezistentne tbl', :medicineNumber => '013730', :inUse => true,:medicine_instruction_id =>'86'

m90= Medicine.create! :name => 'Rupurut 500 mg žvečljive tbl', :medicineNumber => '075566', :inUse => true,:medicine_instruction_id =>'87'





m96= Medicine.create! :name => 'Glivec 100 mg tbl', :medicineNumber => '080608', :inUse => true,:medicine_instruction_id =>'88'
m97= Medicine.create! :name => 'Imatinib Teva 100 mg tbl', :medicineNumber => '145204', :inUse => true,:medicine_instruction_id =>'89'
m98= Medicine.create! :name => 'Meaxin 100 mg tbl', :medicineNumber => '145415', :inUse => true,:medicine_instruction_id =>'90'



Illness.find(1).medicines << Medicine.find(1)
Illness.find(1).medicines << Medicine.find(2)
Illness.find(1).medicines << Medicine.find(3)
Illness.find(1).medicines << Medicine.find(4)

Illness.find(2).medicines << Medicine.find(5)
Illness.find(2).medicines << Medicine.find(6)
Illness.find(2).medicines << Medicine.find(7)
Illness.find(2).medicines << Medicine.find(8)
Illness.find(2).medicines << Medicine.find(9)
Illness.find(2).medicines << Medicine.find(10)

Illness.find(3).medicines << Medicine.find(11)
Illness.find(3).medicines << Medicine.find(12)
Illness.find(3).medicines << Medicine.find(13)
Illness.find(3).medicines << Medicine.find(14)
Illness.find(3).medicines << Medicine.find(12)
Illness.find(3).medicines << Medicine.find(15)
Illness.find(3).medicines << Medicine.find(16)

Illness.find(4).medicines << Medicine.find(17)
Illness.find(4).medicines << Medicine.find(18)
Illness.find(4).medicines << Medicine.find(19)
Illness.find(4).medicines << Medicine.find(20)
Illness.find(4).medicines << Medicine.find(21)

Illness.find(5).medicines << Medicine.find(22)
Illness.find(5).medicines << Medicine.find(23)

Illness.find(6).medicines << Medicine.find(24)
Illness.find(6).medicines << Medicine.find(25)

Illness.find(7).medicines << Medicine.find(26)
Illness.find(7).medicines << Medicine.find(27)
Illness.find(7).medicines << Medicine.find(28)
Illness.find(7).medicines << Medicine.find(29)
Illness.find(7).medicines << Medicine.find(30)

Illness.find(8).medicines << Medicine.find(31)
Illness.find(8).medicines << Medicine.find(32)
Illness.find(8).medicines << Medicine.find(33)

Illness.find(9).medicines << Medicine.find(34)
Illness.find(9).medicines << Medicine.find(35)
Illness.find(9).medicines << Medicine.find(36)
Illness.find(9).medicines << Medicine.find(37)

Illness.find(10).medicines << Medicine.find(38)
Illness.find(10).medicines << Medicine.find(39)
Illness.find(10).medicines << Medicine.find(40)
Illness.find(10).medicines << Medicine.find(41)

Illness.find(11).medicines << Medicine.find(42)
Illness.find(11).medicines << Medicine.find(43)
Illness.find(11).medicines << Medicine.find(44)
Illness.find(11).medicines << Medicine.find(45)
Illness.find(11).medicines << Medicine.find(46)
Illness.find(11).medicines << Medicine.find(47)
Illness.find(11).medicines << Medicine.find(48)
Illness.find(11).medicines << Medicine.find(49)

Illness.find(12).medicines << Medicine.find(50)
Illness.find(12).medicines << Medicine.find(51)
Illness.find(12).medicines << Medicine.find(52)

Illness.find(13).medicines << Medicine.find(53)
Illness.find(13).medicines << Medicine.find(54)
Illness.find(13).medicines << Medicine.find(55)
Illness.find(13).medicines << Medicine.find(56)
Illness.find(13).medicines << Medicine.find(57)
Illness.find(13).medicines << Medicine.find(58)
Illness.find(13).medicines << Medicine.find(59)

Illness.find(23).medicines << Medicine.find(45)
Illness.find(23).medicines << Medicine.find(60)
Illness.find(23).medicines << Medicine.find(61)
Illness.find(23).medicines << Medicine.find(62)
Illness.find(23).medicines << Medicine.find(63)

Illness.find(14).medicines << Medicine.find(64)
Illness.find(14).medicines << Medicine.find(65)
Illness.find(14).medicines << Medicine.find(66)
Illness.find(14).medicines << Medicine.find(67)

Illness.find(15).medicines << Medicine.find(68)
Illness.find(15).medicines << Medicine.find(69)
Illness.find(15).medicines << Medicine.find(70)
Illness.find(15).medicines << Medicine.find(71)
Illness.find(15).medicines << Medicine.find(72)

Illness.find(16).medicines << Medicine.find(73)
Illness.find(16).medicines << Medicine.find(74)
Illness.find(16).medicines << Medicine.find(75)
Illness.find(16).medicines << Medicine.find(76)

Illness.find(17).medicines << Medicine.find(77)
Illness.find(17).medicines << Medicine.find(78)


Illness.find(18).medicines << Medicine.find(79)
Illness.find(18).medicines << Medicine.find(80)
Illness.find(18).medicines << Medicine.find(81)
Illness.find(18).medicines << Medicine.find(82)

Illness.find(19).medicines << Medicine.find(83)
Illness.find(19).medicines << Medicine.find(84)
Illness.find(19).medicines << Medicine.find(85)
Illness.find(19).medicines << Medicine.find(86)
Illness.find(19).medicines << Medicine.find(23)
Illness.find(19).medicines << Medicine.find(87)

Illness.find(20).medicines << Medicine.find(83)
Illness.find(20).medicines << Medicine.find(84)
Illness.find(20).medicines << Medicine.find(85)
Illness.find(20).medicines << Medicine.find(86)
Illness.find(20).medicines << Medicine.find(87)

Illness.find(21).medicines << Medicine.find(88)
Illness.find(21).medicines << Medicine.find(89)
Illness.find(21).medicines << Medicine.find(90)

Illness.find(22).medicines << Medicine.find(88)
Illness.find(22).medicines << Medicine.find(89)
Illness.find(22).medicines << Medicine.find(90)

kat1 = MeasurementCategory.create! :name => 'srčni tlak', :elements => 3
kat2 = MeasurementCategory.create! :name => 'glukoza', :elements => 1
kat3 = MeasurementCategory.create! :name => 'temperatura', :elements => 1
kat4 = MeasurementCategory.create! :name => 'teza', :elements => 1

el1 = MeasurementType.create! :name => 'Sistolicni tlak', :min_value => 0, :max_value => 200, :measurement_category_id => 1, :unit => 'mmHg'
el2 = MeasurementType.create! :name => 'Diastolicni tlak', :min_value => 0, :max_value => 200, :measurement_category_id => 1, :unit => 'mmHg'
el3 = MeasurementType.create! :name => 'Srcni utrip', :min_value => 0, :max_value => 200, :measurement_category_id => 1, :unit => 'BPM(stevilo utripov na minuto)'
el4 = MeasurementType.create! :name => 'Glukoza', :min_value => 0, :max_value => 200, :measurement_category_id => 2, :unit => 'mmol/L'
el5 = MeasurementType.create! :name => 'Telesna temperatura', :min_value => 0, :max_value => 200, :measurement_category_id => 3, :unit => 'stopinj celzija'
el6 = MeasurementType.create! :name => 'Telesna teza', :min_value => 0, :max_value => 200, :measurement_category_id => 4, :unit => 'kg'


