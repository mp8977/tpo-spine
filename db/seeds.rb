User.create!([
  {validated: false, email: "", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, confirmation_token: nil, confirmed_at: nil, confirmation_sent_at: nil, unconfirmed_email: nil, failed_attempts: 0, locked_at: nil, deleted: false},
  {validated: false, email: "dom0308@gmail.com", encrypted_password: "$2a$10$EscKDU622RQHrC4W7LSSX.DuZC4WtUYPzsPjToeNAxzFRH.fkvKBy", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 15, current_sign_in_at: "2016-05-08 10:41:01", last_sign_in_at: "2016-05-02 12:49:31", current_sign_in_ip: "::1", last_sign_in_ip: "::1", confirmation_token: "2xwCxKrHNKg-CFDxyQMo", confirmed_at: "2016-04-14 12:01:07", confirmation_sent_at: "2016-04-14 11:59:15", unconfirmed_email: nil, failed_attempts: 0, locked_at: nil, deleted: false}
])
Admin.create!([
  {email: "dom0308@gmail.com", encrypted_password: "$2a$10$p2DSQgQ4tQ2QDInPKyC13uKyYgyRKspjc2sNuECqrIrFkSkwyf3Li", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 1, current_sign_in_at: "2016-04-14 11:56:34", last_sign_in_at: "2016-04-14 11:56:34", current_sign_in_ip: "::1", last_sign_in_ip: "::1", failed_attempts: 0, locked_at: nil},
  {email: "plut.car@gmail.com", encrypted_password: "$2a$10$dorwQns/Qt59u5.P/22tUupt9ZRaYuMwWwbgekJdGKMEG.X76b6Ji", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, failed_attempts: 0, locked_at: nil}
])
Doctor.create!([
  {doctorNumber: "e12348", category: "zobozdravnik", lastName: "Novak", firstName: "Janez", phone: "041-111-111", limitPatient: 40, hospital_id: nil, email: "", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, failed_attempts: 0, locked_at: nil, deleted: false},
  {doctorNumber: "e10789", category: "ortodont", lastName: "Miha", firstName: "Kovac", phone: "041-222-222", limitPatient: 30, hospital_id: nil, email: "", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, failed_attempts: 0, locked_at: nil, deleted: false},
  {doctorNumber: "e123", category: "zobozdravnik", lastName: "Novak", firstName: "Janez", phone: "041222222", limitPatient: 40, hospital_id: nil, email: "doct@gmail.com", encrypted_password: "$2a$10$WMeNUJmlHjbxAjw.Y1nkZu7Pw0DnRRXzXKhsbO.U8S99afYBwajqa", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 1, current_sign_in_at: "2016-04-14 11:57:54", last_sign_in_at: "2016-04-14 11:57:54", current_sign_in_ip: "::1", last_sign_in_ip: "::1", failed_attempts: 0, locked_at: nil, deleted: false},
  {doctorNumber: nil, category: nil, lastName: nil, firstName: nil, phone: nil, limitPatient: nil, hospital_id: 2, email: "dom0308@gmail.co", encrypted_password: "$2a$10$SxlYn7bh4x30PLrVC5jcEe4JUNT/3QaIi3bMyyIOh0/hknxkA2tSK", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, failed_attempts: 0, locked_at: nil, deleted: false},
  {doctorNumber: "e964", category: "zobozdravnik", lastName: "Novak", firstName: "Bine", phone: "041222222", limitPatient: 40, hospital_id: 1, email: "dom0308@gmail.com", encrypted_password: "$2a$10$L/ufp206mryBejZMCQd/WecwP9HU35aUOZGhuXOpsPRI596F2vB3y", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 2, current_sign_in_at: "2016-05-07 13:00:03", last_sign_in_at: "2016-04-30 00:14:16", current_sign_in_ip: "::1", last_sign_in_ip: "::1", failed_attempts: 0, locked_at: nil, deleted: false}
])
Nurse.create!([
  {nurseNumber: "n1205", lastName: "Spela", firstName: "Pregelj", phone: "041-333-333", hospital_id: nil, email: "", encrypted_password: "", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, failed_attempts: 0, locked_at: nil, deleted: false},
  {nurseNumber: nil, lastName: nil, firstName: nil, phone: nil, hospital_id: nil, email: "medicinska@gmail.com", encrypted_password: "$2a$10$knx3Tmnkf.2SheWt4IzG3.KoNF7DJSk0/ulddYXhoz4ZRoNVhwkwa", reset_password_token: nil, reset_password_sent_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, failed_attempts: 0, locked_at: nil, deleted: false}
])
Address.create!([
  {streetName: "Hrib nad Ribcami", streetNumber: "3", post_id: 1},
  {streetName: "Hrib nad Ribcami", streetNumber: "3", post_id: 1},
  {streetName: "", streetNumber: "", post_id: nil},
  {streetName: "Sestova ulica", streetNumber: "10", post_id: 1},
  {streetName: "Ulica Staneta Bokala", streetNumber: "4", post_id: 2},
  {streetName: "Ostrovrharjeva ulica", streetNumber: "6", post_id: 3},
  {streetName: "Polje", streetNumber: "40", post_id: 4},
  {streetName: "Notranjska cesta", streetNumber: "2", post_id: 5},
  {streetName: "Licarjeva", streetNumber: "5", post_id: 6},
  {streetName: "Roska cesta", streetNumber: "18", post_id: 7},
  {streetName: "Potrceva cesta", streetNumber: "23", post_id: 8},
  {streetName: "Vodnikova cesta", streetNumber: "1", post_id: 9},
  {streetName: "Tovarniska cesta", streetNumber: "3", post_id: 10}
])
Appointment.create!([
  {date: "2011-04-10 18:00:00", check_up_id: 1, doctor_id: 1, patient_id: 1, instruction: "Upostevajte dieto za sladkorne bolnike znavodili 2, ce pride do bolecin v predelu trebuha.", duration: nil},
  {date: "2016-12-10 18:00:00", check_up_id: nil, doctor_id: 1, patient_id: 1, instruction: nil, duration: nil},
  {date: "2016-09-10 18:00:00", check_up_id: nil, doctor_id: 1, patient_id: 1, instruction: nil, duration: nil}
])
CheckUp.create!([
  {date: "2016-04-06", doctor_id: 2, patient_id: 1},
  {date: "2011-04-06", doctor_id: nil, patient_id: nil},
  {date: "2016-04-14", doctor_id: 1, patient_id: 2}
])
ContactPerson.create!([
  {lastName: "", firstName: "", phone: "", relationship: "", patient_id: 2, address_id: 3}
])
Diet.create!([
  {dietNumber: "D001", name: "Dieta pri celiakiji", deleted: false},
  {dietNumber: "D003", name: "Dieta pri refluksni bolezni", deleted: false},
  {dietNumber: "D004", name: "Dieta za sladkorne bolnike", deleted: false}
])
DietCheck.create!([
  {diet_id: 3, check_up_id: 1}
])
DietInstruction.create!([
  {diet_id: 1, deleted: false, url_string: "http://www.drustvo-celiakija.si/celiakija"},
  {diet_id: 2, deleted: false, url_string: "http://www.kclj.si/dokumenti/000203-0002f9.pdf"},
  {diet_id: 3, deleted: false, url_string: "http://www.diabetes-zveza.si/uploads/SB95_julij12clanki1.pdf"},
  {diet_id: 3, deleted: false, url_string: "http://www.ezdravje.com/srce-in-zilje/druge-bolezni-srca-in-zilja/sladkorna-bolezen/?s=9"},
  {diet_id: 3, deleted: false, url_string: "http://www.sladkorcki.si/media/docs/Prehrana_pri_SB.pdf"}
])
DoctorHasNurse.create!([
  {doctor_id: 1, nurse_id: 1},
  {doctor_id: 2, nurse_id: 1}
])
DoctorHasPatient.create!([
  {doctor_id: 5, patient_id: 1},
  {doctor_id: 2, patient_id: 1}
])
Hospital.create!([
  {hospitalNumber: "50078", hospitalName: "UKC LJUBLJANA  PEDIATRICNA  KLINIKA", address_id: nil, deleted: false},
  {hospitalNumber: nil, hospitalName: nil, address_id: nil, deleted: false},
  {hospitalNumber: nil, hospitalName: nil, address_id: nil, deleted: false}
])
Illness.create!([
  {illnessNumber: "E11", name: "Diabetes tip 2", isAllergy: false, deleted: false},
  {illnessNumber: "A01", name: "Alergija na cvetni prah", isAllergy: true, deleted: false},
  {illnessNumber: "I11", name: "Hipertenzivna srcna bolezen z (zastojno) srcno odpovedjo", isAllergy: false, deleted: false}
])
IllnessCheck.create!([
  {illness_id: 1, check_up_id: 1},
  {illness_id: 2, check_up_id: 1},
  {illness_id: 3, check_up_id: 1}
])
Measurement.create!([
  {date: "2016-04-06 00:00:00", deleted: false},
  {date: "2016-04-03 00:00:00", deleted: false},
  {date: "2016-03-03 00:00:00", deleted: false}
])
MeasurementDoc.create!([
  {check_up_id: 1, part_measurement_id: 11, deleted: false},
  {check_up_id: 1, part_measurement_id: 12, deleted: false}
])
MeasurementHome.create!([
  {patient_id: 1, part_measurement_id: 1, deleted: false},
  {patient_id: 1, part_measurement_id: 2, deleted: false},
  {patient_id: 1, part_measurement_id: 3, deleted: false},
  {patient_id: 1, part_measurement_id: 4, deleted: false},
  {patient_id: 1, part_measurement_id: 5, deleted: false},
  {patient_id: 1, part_measurement_id: 6, deleted: false},
  {patient_id: 1, part_measurement_id: 7, deleted: false},
  {patient_id: 1, part_measurement_id: 8, deleted: false},
  {patient_id: 1, part_measurement_id: 9, deleted: false},
  {patient_id: 1, part_measurement_id: 10, deleted: false}
])
Medicine.create!([
  {medicineNumber: "082392", name: "Enalapril Vitabalans 10 mg tbl", inUse: true, medicine_instruction_id: 1}
])
MedicineCheck.create!([
  {medicine_id: 1, check_up_id: 1}
])
MedicineInstruction.create!([
  {deleted: false, url_string: "http://www.vitabalans.com/index.php?id=zopitin0004"}
])
PartMeasurement.create!([
  {name: "glucose", unit: "mmol/l", measurement_id: 1, value: "5.0", deleted: false},
  {name: "glucose", unit: "mmol/l", measurement_id: 2, value: "6.0", deleted: false},
  {name: "diastolic", unit: "mmHg", measurement_id: 1, value: "70.0", deleted: false},
  {name: "diastolic", unit: "mmHg", measurement_id: 2, value: "75.0", deleted: false},
  {name: "systolic", unit: "mmHg", measurement_id: 1, value: "120.0", deleted: false},
  {name: "systolic", unit: "mmHg", measurement_id: 2, value: "125.0", deleted: false},
  {name: "HB", unit: "BPM", measurement_id: 1, value: "80.0", deleted: false},
  {name: "HB", unit: "BPM", measurement_id: 2, value: "83.0", deleted: false},
  {name: "temperature", unit: "°C", measurement_id: 1, value: "37.0", deleted: false},
  {name: "weight", unit: "kg", measurement_id: 1, value: "60.0", deleted: false},
  {name: "glucose", unit: "mmol/l", measurement_id: 3, value: "5.0", deleted: false},
  {name: "weight", unit: "kg", measurement_id: 3, value: "65.0", deleted: false}
])
Patient.create!([
  {cardNumber: "01245951", lastName: "Strmljan", firstName: "Jure", phone: "123456789", birthDate: "2011-08-03", sex: "M", user_id: 2, address_id: 1, deleted: false},
  {cardNumber: "21325446", lastName: "Lusina", firstName: "Domen", phone: "041 238 983", birthDate: "2011-04-04", sex: "M", user_id: 2, address_id: 2, deleted: false}
])
Post.create!([
  {postName: "Kresnice", postNumber: "1281"},
  {postName: "Ljubljana", postNumber: "1000"},
  {postName: "Jesenice", postNumber: "4270"},
  {postName: "Medvode", postNumber: "1215"},
  {postName: "Izola - Isola", postNumber: "6310"},
  {postName: "Logatec", postNumber: "1370"},
  {postName: "Cerkno 404", postNumber: "5282"},
  {postName: "Kocevje", postNumber: "1330"},
  {postName: "Ptuj 127\"", postNumber: "2250"},
  {postName: "Velenje", postNumber: "3320"},
  {postName: "Ajdovscina", postNumber: "5270"}
])
