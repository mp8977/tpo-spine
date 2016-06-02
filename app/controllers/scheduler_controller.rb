class SchedulerController < ApplicationController
  def index

  end
  def create
    schedulerHours=params[:scheduler][:hours]
    schedulerStartDate=params[:scheduler][:startDay]
    schedulerWeeks=params[:scheduler][:weeks]
    duration=params[:scheduler][:duration]
    @notes=params[:scheduler][:notes].split(",")


    schedulerHours1D=schedulerHours[2..-3].split("],[")
    schedulerHours2D=[]
    schedulerHours1D.each do |el|
      schedulerHours2D.push(el.split(","))
    end

    i=0
    while i<7
      if  schedulerHours2D[i]!=nil
        schedulerHours2D[i].each do |el|
          date=DateTime.strptime(schedulerStartDate, '%d/%m/%Y')+i
          date=date.change(hour:el[0..1].to_i,min:el[3..4].to_i)
          puts(current_doctor.id)

        end
      end
      i+=1
    end

  end
end
