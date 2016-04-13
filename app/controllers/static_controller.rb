class StaticController < ApplicationController
  def home
  end

  def admin_dashboard
    
  end

  def user_dashboard
    
  end

  def nurse_dashboard
    redirect_to controller: 'nurses', action: 'edit', id: current_nurse.id if nurse_signed_in?
  end

  def doctor_dashboard
    redirect_to controller: 'doctors', action: 'edit', id: current_doctor.id if doctor_signed_in?
  end

end
