class Users::SessionsController < Devise::SessionsController
before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    # to se klice, ko se hoces prijavit kot user
    super
    #store_location_for(resource, '/static/user_dashboard')
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

  def after_sign_in_path_for(resource)
    if prazen_profil(resource) # prazen profil
      edit_patient_path(id: resource.id)
    else
      '/static/user_dashboard'
    end
  end

  def prazen_profil(user)
    user.patients.first.cardNumber.nil?
  end

#  def after_sign_in_path_for(resource)
 #   stored_location_for(resource) || request.referer || root_path
  #end
end
