class SchedulerController < ApplicationController
  def index
  end


  def create
    schedulerHours=params[:scheduler][:hours]

    schedulerTaken=params[:scheduler][:taken]
    schedulerOther=params[:scheduler][:other]
    schedulerStartDate=params[:scheduler][:startDay]
    duration=params[:scheduler][:duration]
    notes=params[:scheduler][:notes].split(",")
    doctorId=current_doctor.id

    schedulerHours=formatArray(schedulerHours)
    schedulerTaken=formatArray(schedulerTaken)
    schedulerOther=formatArray(schedulerOther)

    if schedulerStartDate[2]=='.'
      date=DateTime.strptime(schedulerStartDate, '%d.%m.%Y')
    elsif  schedulerStartDate[2]=='/'
      date=DateTime.strptime(schedulerStartDate, '%m/%d/%Y')
    end

    allSchedulerHours={0=>[],1=>[],2=>[],3=>[],4=>[],5=>[],6=>[]}

    for i in 0..6
      if  schedulerHours[i]!=nil
        schedulerHours[i].each do |el|
          allSchedulerHours[i].push({hour:el,type:"nil"})
        end
      end

      if  schedulerTaken[i]!=nil
        schedulerTaken[i].each do |el|
          allSchedulerHours[i].push({hour:el,type:"taken"})
        end
      end

      if  schedulerOther[i]!=nil
        schedulerOther[i].each do |el|
          allSchedulerHours[i].push({hour:el,type:"other"})
        end
      end

      #urejanje
      allSchedulerHours[i]=allSchedulerHours[i].sort_by{|v| v[:hours]}
    end


    @allSchedulerHours=allSchedulerHours

    #puts(dateEnd)
    #listOfFreeHours=Appointment.where("doctor_id=? AND date<=? AND date>? AND patient_id=nil",doctorId,dateEnd,date).count
    arrayIds=[];
    i=0
    while i<7
      if  allSchedulerHours[i]!=nil
        allSchedulerHours[i].each do |el|
          newDate=date+i
          newDate=newDate.change(hour:el[:hour][0..1].to_i,min:el[:hour][3..4].to_i)
          tmpAppointment=Appointment.where("doctor_id=? AND date=?",doctorId,newDate)

          if tmpAppointment.count!=0
            tmpAppointment=tmpAppointment.first
            if el[:type]=="nil"
              tmpAppointment.update(patient_id:nil,instruction:notes[i],duration:duration,isOther:false)
            elsif  el[:type]=="other"
              tmpAppointment.update(patient_id:nil,instruction:notes[i],duration:duration,isOther:true)
            elsif el[:type]=="taken"
              #TODO
              tmpAppointment.update(patient_id:1,instruction:notes[i],duration:duration,isOther:false)
            end
          else
            if el[:type]=="nil"
              tmpAppointment=Appointment.create(date:newDate,doctor_id:doctorId,patient_id:nil,instruction:notes[i],duration:duration,isOther:false)
            elsif  el[:type]=="other"
              tmpAppointment=Appointment.create(date:newDate,doctor_id:doctorId,patient_id:nil,instruction:notes[i],duration:duration,isOther:true)
            elsif el[:type]=="taken"
              #TODO
              tmpAppointment=Appointment.create(date:newDate,doctor_id:doctorId,patient_id:1,instruction:notes[i],duration:duration,isOther:false)
            end
          end
          arrayIds.push(tmpAppointment.id)

        end
      end
      i+=1
    end

    #brišemo sestanke, ki niso an urniku vendar so še vednoo v bazi
    Appointment.where("doctor_id=? AND date<=? AND date>?",doctorId,date+7,date).each do |el|
      if !arrayIds.include? el.id
        el.delete
      end
    end

    render :index
  end

  def formatArray(schedulerHours)
    schedulerHours1D=schedulerHours[2..-3].split("],[")
    schedulerHours2D=[]
    schedulerHours1D.each do |el|
      schedulerHours2D.push(el.split(","))
    end
    return schedulerHours2D
  end

end
