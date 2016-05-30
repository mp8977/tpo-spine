# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.create! :email => 'plut.car@gmail.com', :password => 'bizjak12', :password_confirmation => 'bizjak12'
zdravnik1=Doctor.create! :email => 'zdravnik1@gmail.com', :password => 'zdravnik1'

post1 = Post.create! :postNumber => '1000', :postName => 'Ljubljana'
post2 = Post.create! :postNumber => '4270', :postName => 'Jesenice'
post3 = Post.create! :postNumber => '1215', :postName => 'Medvode'
post4 = Post.create! :postNumber => '6310', :postName => 'Izola - Isola'
post5 = Post.create! :postNumber => '1370', :postName => 'Logatec'
post6 = Post.create! :postNumber => '5282', :postName => 'Cerkno 404'
post7 = Post.create! :postNumber => '1330', :postName => 'Kocevje'
post8 = Post.create! :postNumber => '2250', :postName => 'Ptuj 127'
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


d1 = Diet.create! :name => 'Dieta pri celiakiji', :dietNumber => 'D001'
d2 = Diet.create! :name => 'Dieta za ledvične bolnike', :dietNumber => 'D002'
d3 = Diet.create! :name => 'Dieta pri refluksni bolezni', :dietNumber => 'D003'
d4 = Diet.create! :name => 'Dieta za sladkorne bolnike', :dietNumber => 'D004'
d5 = Diet.create! :name => 'Dieta za znižanje holesterola', :dietNumber => 'D005'
d6= Diet.create! :name => 'Prehrana pri driski', :dietNumber => 'D006'
d7= Diet.create! :name => 'Dieta za znižanje trigliceridov', :dietNumber => 'D007'
d8 = Diet.create! :name => 'Dieta pri boleznih jeter', :dietNumber => 'D008'
d9 = Diet.create! :name => 'Dieta pri boleznih želodca in dvanajstnika', :dietNumber => 'D009'

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


m1 = Medicine.create! :name => 'Enalapril Vitabalans 10 mg tbl', :medicineNumber => '082392', :inUse => true
m2 = Medicine.create! :name => 'Piramil 10 mg tbl', :medicineNumber => '016470', :inUse => true
m3 = Medicine.create! :name => 'Enap 10 mg tbl', :medicineNumber => '028479', :inUse => true
m4 = Medicine.create! :name => 'Olivin 10 mg tbl', :medicineNumber => '059064', :inUse => true
m5 = Medicine.create! :name => 'Concor 5 mg tbl', :medicineNumber => '011444', :inUse => true
m6 = Medicine.create! :name => 'Byol 5 mg tbl', :medicineNumber => '115746', :inUse => true
m7 = Medicine.create! :name => 'Borez 5 mg tbl', :medicineNumber => '129607', :inUse => true
m8 = Medicine.create! :name => 'Concordina 5 mg/5 mg tbl', :medicineNumber => '146097', :inUse => true
m9 = Medicine.create! :name => 'Lodoz 5 mg/6,25 mg tbl', :medicineNumber => '060755', :inUse => true
m10 = Medicine.create! :name => 'Sobycor 5 mg tbl', :medicineNumber => '146144', :inUse => true
m11 = Medicine.create! :name => 'Aglurab 1000 mg tbl', :medicineNumber => '144343', :inUse => true
m12 = Medicine.create! :name => 'Glucophage 1000 mg tbl', :medicineNumber => '040886', :inUse => true
m13 = Medicine.create! :name => 'Belformin 500 mg tbl', :medicineNumber => '145137', :inUse => true
m14 = Medicine.create! :name => 'Formagliben 500 mg/2,5 mg tbl', :medicineNumber => '108375', :inUse => true

m16 = Medicine.create! :name => 'Metfogamma 1000 mg tbl', :medicineNumber => '042021', :inUse => true
m17 = Medicine.create! :name => 'Siofor 1000 mg tbl', :medicineNumber => '025550', :inUse => true
m18 = Medicine.create! :name => 'Actrapid 100 i.e. Raztopina za injiciranje v viali', :medicineNumber => '030619', :inUse => true
m19 = Medicine.create! :name => 'Actrapid FlexPen 100 i.e. Raztopina za injiciranje v napolnjenem injekcijskem peresniku', :medicineNumber => '051101', :inUse => true
m20= Medicine.create! :name => 'Humulin M3 100 i.e./ml suspenzija za injiciranje v vložku', :medicineNumber => '095990', :inUse => true
m21= Medicine.create! :name => 'Insuman Rapid 100 i.e./ml OptiSet raztopina za injiciranje', :medicineNumber => '030147', :inUse => true
m22= Medicine.create! :name => 'Mixtard 10 NovoLet 100 i.e./ml suspenzija za injiciranje v napolnjenem injekcijskem peresniku', :medicineNumber => '019534', :inUse => true
m23= Medicine.create! :name => 'Ranitidin Accord 150 mg tbl', :medicineNumber => '145976', :inUse => true
m24= Medicine.create! :name => 'Ranital 150 mg tbl', :medicineNumber => '071684', :inUse => true
m25= Medicine.create! :name => 'Metamizol STADA 500 mg/ml peroralne kapljice, raztopina', :medicineNumber => '146311', :inUse => true
m26= Medicine.create! :name => 'Analgin 500 mg tbl', :medicineNumber => '000191', :inUse => true
m27= Medicine.create! :name => 'Omnic Ocas 0,4 mg tbl', :medicineNumber => '038695', :inUse => true
m28= Medicine.create! :name => 'Combodart 0,5 mg/0,4mg kaps', :medicineNumber => '105864', :inUse => true
m29= Medicine.create! :name => 'Miktan 0,4 mg tbl', :medicineNumber => '128333', :inUse => true
m30= Medicine.create! :name => 'Morvesin 0,4 mg trde kapsule', :medicineNumber => '033880', :inUse => true
m31= Medicine.create! :name => 'Tanyz 0,4 mg trde kapsule', :medicineNumber => '038245', :inUse => true
m32= Medicine.create! :name => 'Dicitirox 50 mg tbl', :medicineNumber => '146102', :inUse => true
m33= Medicine.create! :name => 'Eltroxin 50 mg tbl', :medicineNumber => '092010', :inUse => true
m34= Medicine.create! :name => 'Euthyrox 50 mg tbl', :medicineNumber => '023442', :inUse => true
m35= Medicine.create! :name => 'Ciprobay 500 mg tbl', :medicineNumber => '022454', :inUse => true
m36= Medicine.create! :name => 'Ciprinol 500 mg tbl', :medicineNumber => '040398', :inUse => true
m37= Medicine.create! :name => 'Ciprofloksacin Lek 500 mg tbl', :medicineNumber => '086029', :inUse => true
m38= Medicine.create! :name => 'Primotren 80mg/ 400 mg tbl', :medicineNumber => '069418', :inUse => true
m39= Medicine.create! :name => 'Coupet 20 mg tbl', :medicineNumber => '104426', :inUse => true
m40= Medicine.create! :name => 'Sorvasta 20 mg tbl', :medicineNumber => '109827', :inUse => true
m41= Medicine.create! :name => 'Vosustat 20 mg tbl', :medicineNumber => '109932', :inUse => true
m42= Medicine.create! :name => 'Rosuvastatin Teva 20 mg tbl', :medicineNumber => '109690', :inUse => true
m43= Medicine.create! :name => 'Daleron 500 mg tbl', :medicineNumber => '034487', :inUse => true
m44= Medicine.create! :name => 'Lekadol 500 mg tbl', :medicineNumber => '055654', :inUse => true
m45= Medicine.create! :name => 'Calpol 250 mg/5 ml peroralna suspenzija', :medicineNumber => '002739', :inUse => true
m46= Medicine.create! :name => 'Doreta 37,5 mg/325 mg', :medicineNumber => '072940', :inUse => true
m47= Medicine.create! :name => 'Ibuem 250 mg/250 mg/50 mg tbl', :medicineNumber => '146066', :inUse => true
m48= Medicine.create! :name => 'Panadol 500 mg tbl', :medicineNumber => '093351', :inUse => true
m49= Medicine.create! :name => 'Paracetamol svečke 500 mg(Lekarne Ljubljana)', :medicineNumber => '600695', :inUse => true
m50= Medicine.create! :name => 'Tevitamol 500 mg tablete', :medicineNumber => '136058', :inUse => true
m51= Medicine.create! :name => 'Lexaurin 3 mg tbl', :medicineNumber => '046124', :inUse => true
m52= Medicine.create! :name => 'Lekotam 3 mg tbl', :medicineNumber => '045136', :inUse => true
m53= Medicine.create! :name => 'Apaurin 10 mg tbl', :medicineNumber => '019348', :inUse => true
m54= Medicine.create! :name => 'Cipralex 10 mg', :medicineNumber => '040096', :inUse => true
m55= Medicine.create! :name => 'Citafort 10 mg tbl', :medicineNumber => '125610', :inUse => true
m56= Medicine.create! :name => 'Ecytara 10 mg tbl', :medicineNumber => '058793', :inUse => true
m57= Medicine.create! :name => 'Elicea 10 mg tbl', :medicineNumber => '085685', :inUse => true
m58= Medicine.create! :name => 'Escitalopram Krka 10 mg tbl', :medicineNumber => '146299', :inUse => true
m59= Medicine.create! :name => 'Otigem 10 mg tbl', :medicineNumber => '118460', :inUse => true
m60= Medicine.create! :name => 'Solatcit 10 mg tbl', :medicineNumber => '104213', :inUse => true

m62= Medicine.create! :name => 'Tramal 150 mg tbl', :medicineNumber => '012114', :inUse => true
m63= Medicine.create! :name => 'Tadol 100 mg tbl s podaljšanim sproščanjem', :medicineNumber => '012084', :inUse => true
m64= Medicine.create! :name => 'Tramadol Vitabalans 50 mg tbl', :medicineNumber => '145499', :inUse => true
m65= Medicine.create! :name => 'Zaracet 37,5 mg/325 mg tbl', :medicineNumber => '124680', :inUse => true
m66= Medicine.create! :name => 'Flonidan 10 mg', :medicineNumber => '020583', :inUse => true
m67= Medicine.create! :name => 'Claritine S 10 mg tbl', :medicineNumber => '062987', :inUse => true
m68= Medicine.create! :name => 'Florgan 10 mg orodisperzibilne tbl', :medicineNumber => '051420', :inUse => true
m69= Medicine.create! :name => 'Rinolan 10 mg tablete', :medicineNumber => '058238', :inUse => true
m70= Medicine.create! :name => 'Bimatoprost Sandoz 0,3 mg/ml kapljice', :medicineNumber => '146530', :inUse => true
m71= Medicine.create! :name => 'Lumigan 0,1 mg/ml kapljice', :medicineNumber => '102229', :inUse => true
m72= Medicine.create! :name => 'Brimonidin Medops 2 mg/ml kapljice za oko', :medicineNumber => '139603', :inUse => true
m73= Medicine.create! :name => 'Timalen 2,5 mg/ml kapljice za oko, raztopina', :medicineNumber => '114022', :inUse => true
m74= Medicine.create! :name => 'Latanox 50 mg/ml kapljice za oko', :medicineNumber => '114006', :inUse => true
m75= Medicine.create! :name => 'Hiconcil 500 mg trde kapsule', :medicineNumber => '025666', :inUse => true
m76= Medicine.create! :name => 'Amoksiklav 500mg/125mg tbl', :medicineNumber => '069280', :inUse => true
m77= Medicine.create! :name => 'Betaklav 500 mg/125 mg tbl', :medicineNumber => '147056', :inUse => true
m78= Medicine.create! :name => 'Ospamox 500 mg disperzibilne tbl', :medicineNumber => '041866', :inUse => true
m79= Medicine.create! :name => 'Lasix 40 mg tbl', :medicineNumber => '072656', :inUse => true
m80= Medicine.create! :name => 'Edemid 40 mg tbl', :medicineNumber => '026778', :inUse => true
m81= Medicine.create! :name => 'Belfil 50 mg tbl', :medicineNumber => '108995', :inUse => true
m82= Medicine.create! :name => 'Sildenafil Teva 100 mg tbl', :medicineNumber => '097420', :inUse => true
m83= Medicine.create! :name => 'Tornetis 100 mg tbl', :medicineNumber => '091782', :inUse => true
m84= Medicine.create! :name => 'Viagra 50 mg tbl', :medicineNumber => '093564', :inUse => true
m85= Medicine.create! :name => 'Acipan 20 mg gastrorezistentne tbl', :medicineNumber => '028622', :inUse => true
m86= Medicine.create! :name => 'Controloc 20 mg gastrorezistentne tbl', :medicineNumber => '023507', :inUse => true
m87= Medicine.create! :name => 'Nolpaza 20 mg gastrorezistentne tbl', :medicineNumber => '013200', :inUse => true
m88= Medicine.create! :name => 'Nexium 20 mg gastrorezistentne tbl', :medicineNumber => '013730', :inUse => true

m90= Medicine.create! :name => 'Rupurut 500 mg žvečljive tbl', :medicineNumber => '075566', :inUse => true





m96= Medicine.create! :name => 'Glivec 100 mg tbl', :medicineNumber => '080608', :inUse => true
m97= Medicine.create! :name => 'Imatinib Teva 100 mg tbl', :medicineNumber => '145204', :inUse => true
m98= Medicine.create! :name => 'Meaxin 100 mg tbl', :medicineNumber => '145415', :inUse => true



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




