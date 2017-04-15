class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :redirect_url
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :dob, :phone_no, :address, :username, :college_name, :email, :password, :remember_me)}
  	devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :dob, :phone_no, :address, :username, :college_name, :email, :password, :remember_me)}

  	devise_parameter_sanitizer.permit(:accept_invitation)
  	devise_parameter_sanitizer.permit(:accept_invitation) do |u|
      u.permit(:email, :password, :password_confirmation, :invitation_token, :type)
  	end
  end

  def redirect_url
    return new_user_session_path unless user_signed_in?
    case current_user
      when Student
        student_dashboard_path
      when Lecturer
        lecturer_dashboard
    end
  end
end
