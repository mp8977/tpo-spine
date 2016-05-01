class StaticController < ApplicationController

  def home
  end

  def admin_dashboard
  end

  def user_dashboard
    if user_signed_in?
      @patient = current_user.patients.first
      puts @patient
      if @patient.cardNumber == nil
        redirect_to controller: 'patients', action: 'edit', id: @patient.id
      end
    end
  end

  def nurse_dashboard
    redirect_to controller: 'nurses', action: 'edit', id: current_nurse.id if nurse_signed_in? && current_nurse.nurseNumber == nil
  end

  def doctor_dashboard
    redirect_to controller: 'doctors', action: 'edit', id: current_doctor.id if doctor_signed_in? && current_doctor.doctorNumber == nil
  end

  def confirmation

  end

end
