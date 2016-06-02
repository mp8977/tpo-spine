class Doctors::SessionsController < Devise::SessionsController
before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super

   # store_location_for(resource, '/static/doctor_dashboard')
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.for(:sign_in)# << :attribute
  end

  def after_sign_in_path_for(resource) # resource je user
    if prazen_profil(resource) # prazen profil
      edit_doctor_path(id: resource.id)
    else
      static_doctor_dashboard_path
    end
  end

  def prazen_profil(doctor)
    doctor.doctorNumber.nil?
  end
end
