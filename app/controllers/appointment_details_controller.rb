class AppointmentDetailsController < ApplicationController


  def show
    pregled=Appointment.find(params[:id])
    pastDate=pregled.date
    nextDate=Appointment.where("doctor_id=? AND patient_id=? AND date > ?",pregled.doctor_id,pregled.patient_id,pastDate).order('CAST(date AS DATETIME) asc').first


    if nextDate!=nil
      nextDate=nextDate.date
      @nextDate=nextDate.hour.to_s+":"+nextDate.min.to_s+" "+nextDate.day.to_s+"/"+nextDate.month.to_s+"/"+nextDate.year.to_s
    end
    @pastDate=pastDate.hour.to_s+":"+pastDate.min.to_s+" "+pastDate.day.to_s+"/"+pastDate.month.to_s+"/"+pastDate.year.to_s
    pastDoctor=Doctor.find(pregled.doctor_id)
    @pastDoctorType=pastDoctor.category
    @pastDoctor=pastDoctor.firstName+" "+pastDoctor.lastName
    checkUpId=pregled.check_up_id
    @instructions=pregled.instruction
    if checkUpId!=nil
      dietChecks=DietCheck.where("check_up_id = ?",checkUpId)
      dietIds=[];
      @dietNames=[];
      @dietUrls=[];
      dietChecks.each do |dietCheck|
        dietIds.push(dietCheck.diet_id)
        @dietNames.push(Diet.find(dietCheck.diet_id).name)
        dietUrl=[]
        allDietUrl=DietInstruction.where("diet_id=?",dietCheck.diet_id)
        allDietUrl.each do |url|
          dietUrl.push(url.url)
        end
        @dietUrls.push(dietUrl)
      end

      illnessChecks=IllnessCheck.where("check_up_id = ?",checkUpId)
      illnessIds=[];
      illnessChecks.each do |illnessCheck|
        illnessIds.push(illnessCheck.illness_id)
      end
      @allergyNames=[]
      @illnessNames=[]
      illnessIds.each do |el|
        diagnose=Illness.where("id=?",el).first
        if diagnose.isAllergy
          @allergyNames.push(diagnose.name)
        else
          @illnessNames.push(diagnose.name)
        end
      end
      medicineChecks=MedicineCheck.where("check_up_id = ?",checkUpId)

      medicineIds=[];
      medicineChecks.each do |medicineCheck|
        medicineIds.push(medicineCheck.medicine_id)
      end
      @medicineNames=[]
      @medicineUrl=[]
      for el in medicineIds
        med=Medicine.where("id=?",el).first
        @medicineNames.push(med.name)
        @medicineUrl.push(MedicineInstruction.where("id=?",med.medicine_instruction_id).first.url)
      end

      allMeasurementDoc=MeasurementDoc.where("check_up_id=?",checkUpId)
      @partMeasurementAll=[]
      allMeasurementDoc.each do |measurementDoc|
        meritev=PartMeasurement.find(measurementDoc.part_measurement_id)
        @partMeasurementAll.push([meritev.name,meritev.value,meritev.unit])
      end

    end


  end

end
