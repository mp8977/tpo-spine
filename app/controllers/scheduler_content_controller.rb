class SchedulerContentController < ApplicationController

  def index
    schedulerStartDate= params[:date]
    if schedulerStartDate[2]=='.'
      date=DateTime.strptime(schedulerStartDate, '%d.%m.%Y')
    elsif  schedulerStartDate[2]=='/'
      date=DateTime.strptime(schedulerStartDate, '%m/%d/%Y')
    end

    doctorId=params[:doc].to_i


    listOfFreeHours=Appointment.where("doctor_id=? AND date<=? AND date>?",doctorId,date+7,date)
    allSchedulerHours={0=>[],1=>[],2=>[],3=>[],4=>[],5=>[],6=>[]}
    for i in 0..6
      listOfFreeHours.where("date>=? AND date<?",date+i,date+i+1).each do |el|
        type="";
        if el.isOther
          type="other"
        else
          if el.patient_id==nil
            type="nil"
          else
            type="taken"
          end
        end
        if type!="taken"
          allSchedulerHours[i].push({hour:el.date.strftime("%H:%M"),type:type,duration:el.duration,instruction:el.instruction})
        elsif type=="taken"
          allSchedulerHours[i].push({hour:el.date.strftime("%H:%M"),duration:el.duration,instruction:el.instruction,type:type,patId:el.patient_id,name:Patient.find(el.patient_id).firstName+" "+Patient.find(el.patient_id).lastName})
        end
      end

    end
   render :json=> allSchedulerHours
  end

end
