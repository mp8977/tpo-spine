# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Medicine.create! name: 'Zdravil1', inUse: true, medicineNumber: 3426
Medicine.create! name: 'Zdravil2', inUse: true, medicineNumber: 3428
Medicine.create! name: 'Zdravil3', inUse: true, medicineNumber:  3429
Illness.create! name: 'Bolezil',illnessNumber: 2123, isAllergy: false#, :medicine => Medicine.where(:name =>['Zdrav1','Zdrav3'])
Illness.create! name: 'Bolezil2',illnessNumber: 2124, isAllergy: false#, :medicine => Medicine.where(:name =>['Zdrav1','Zdrav2'])
Illness.create! name: 'Bolezil3',illnessNumber: 2121, isAllergy: false#, :medicine => Medicine.where(:name =>['Zdrav3','Zdrav2'])

#Illness.where(:name => 'Bolez11').medicines << Medicine.where(:name => 'Zdrav1')
Illness.find(1).medicines << Medicine.find(1)
Illness.find(1).medicines << Medicine.find(2)
Illness.find(2).medicines << Medicine.find(1)
Illness.find(2).medicines << Medicine.find(2)
Illness.find(3).medicines << Medicine.find(2)
Illness.find(3).medicines << Medicine.find(3)
