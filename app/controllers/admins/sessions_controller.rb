class Admins::SessionsController < Devise::SessionsController
  before_filter :configure_sign_in_params, only: [:create]

# GET /resource/sign_in
  def new
    super
  end

# POST /resource/sign_in
  def create
    super

    store_location_for(resource, '/users/new')
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
    sign_in_url = '/users/new'
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end


end
