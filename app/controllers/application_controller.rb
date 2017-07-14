  class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :redirect_url
  before_filter :configure_permitted_parameters, if: :devise_controller?

  # def after_sign_in_path_for(resource)
  #   student_dashboard_path if resource.is_a?(Student)
  #   lecturer_dashboard_path if resource.is_a?(Lecturer)
  # end

  protected
  def configure_permitted_parameters
  	#devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update,keys: [:first_name, :last_name, :email, :dob, :phone_no, :address, :course, :password, :confirmation_password])
  	devise_parameter_sanitizer.permit(:accept_invitation)
  	devise_parameter_sanitizer.permit(:accept_invitation) do |u|
      u.permit(:email, :password, :password_confirmation, :invitation_token, :type)
  	end
  end
end
