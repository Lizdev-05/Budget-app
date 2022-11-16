class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  def after_sign_in_path_for(_resource)
    user_path(current_user) # your path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, { roles: [] }])
end

private

def splash_screen
  redirect_to splash_screens_index_path unless user_signed_in?
end
end
