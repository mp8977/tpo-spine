class PickDoctorController < ApplicationController
  def index
    #pacienti
    if current_user.id!=nil
      @patientsPD =Patient.where("user_id=? AND deleted='false'",current_user.id)
      listOfDoctorIds=[]
      Patient.where("user_id=? AND deleted='false'",current_user.id).each do |pat|
        tmp=[0,0,"",""]

        DoctorHasPatient.where("patient_id=?",pat.id).each do |docPat|
          d=Doctor.where("id=? AND deleted='false'",docPat.doctor_id).first
          if d.category=='zdravnik'
            tmp[0]=d.id
            tmp[2]=d.firstName+" "+d.lastName
          elsif d.category=="zobozdravnik"
            tmp[1]=d.id
            tmp[3]=d.firstName+" "+d.lastName
          end
        end
        listOfDoctorIds.push(tmp)

      end
    end

    #zdravniki
    vsiZdravniki=Doctor.where("category='zdravnik' AND deleted='false'")
    vsiProstiZdravniki=[]
    vsiZdravniki.each do |zdravnik|
        steviloPacientov=DoctorHasPatient.where("doctor_id=?",zdravnik.id).count
        if zdravnik.limitPatient-steviloPacientov>0
          vsiProstiZdravniki.push(zdravnik);
        end
    end

    #zobozdravniki
    vsiZobozdravniki=Doctor.where("category='zobozdravnik' AND deleted='false'")
    vsiProstiZobozdravniki=[]
    vsiZobozdravniki.each do |zobozdravnik|
      steviloPacientov=DoctorHasPatient.where("doctor_id=?",zobozdravnik.id).count
      if zobozdravnik.limitPatient-steviloPacientov>0
        vsiProstiZobozdravniki.push(zobozdravnik);
      end
    end


  @doctorsPD=vsiProstiZdravniki
  @dentistPD=vsiProstiZobozdravniki
  @listOfDoctorIDsPD=listOfDoctorIds

  end

  def create
    docId=params[:pick][:doctor]
    denId=params[:pick][:dentist]
    patId=params[:pick][:patient]


    vsiZdravnikiPacienta=DoctorHasPatient.where("patient_id=?",patId)
    doctor=nil
    dentist=nil
    vsiZdravnikiPacienta.each do |zdravnik|
      tipZdravnika=Doctor.where("id=? AND deleted='false'",zdravnik.doctor_id)
      if tipZdravnika.count==1
        if tipZdravnika.first.category=="zdravnik"
          doctor=tipZdravnika.first.id
        elsif tipZdravnika.first.category=="zobozdravnik"
          dentist=tipZdravnika.first.id
        end
      end
    end

    if docId != nil
      docPatientFree=Doctor.find(docId).limitPatient-DoctorHasPatient.where("doctor_id=?",docId).count
      if docPatientFree>0
        if doctor==nil and docId!=nil
          DoctorHasPatient.create(doctor_id: docId, patient_id: patId)
        elsif doctor!=nil and docId!=nil
          DoctorHasPatient.where("patient_id=? AND doctor_id=?",patId,doctor).first.update(doctor_id: docId)
        end
      elsif docPatientFree<1
        @docMsg="Zdravnik "+Doctor.find(docId).firstName+" "+Doctor.find(docId).lastName+" ne sprejema novih pacientov."
      end
    end
    if DoctorHasPatient.where("patient_id=? AND doctor_id=?",patId,docId).count>0
      @docMsg="Zdravnik "+Doctor.find(docId).firstName+" "+Doctor.find(docId).lastName+" je vaš trenuten zdravnik."
    end

    if denId != nil
      denPatientFree=Doctor.find(denId).limitPatient-DoctorHasPatient.where("doctor_id=?",denId).count
      if denPatientFree>0
        if dentist==nil and denId!=nil
          DoctorHasPatient.create(doctor_id: denId, patient_id: patId)
        elsif dentist!=nil and denId!=nil
          DoctorHasPatient.where("patient_id=? AND doctor_id=?",patId,dentist).first.update(doctor_id: denId)
        end
      elsif denPatientFree<1
        @denMsg="Zobozdravnik "+Doctor.find(denId).firstName+" "+Doctor.find(denId).lastName+" ne sprejema novih pacientov."
      end
    end
    if DoctorHasPatient.where("patient_id=? AND doctor_id=?",patId,denId).count>0
      @denMsg="Zobozdravnik "+Doctor.find(denId).firstName+" "+Doctor.find(denId).lastName+" je vaš trenuten zobozdravnik."
    end
  end


end
