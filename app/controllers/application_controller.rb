class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  alias_method :current_user, :current_blogger

  def configure_permitted_parameters
    allowed_params =  [:name, :email,:password, :password_confirmation, :current_password]
    devise_parameter_sanitizer.for(:sign_up).concat allowed_params
    devise_parameter_sanitizer.for(:account_update).concat allowed_params
  end

end
