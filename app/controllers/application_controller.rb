class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :dob, :phone_no, :address, :username, :college_name, :email, :password, :remember_me)}
  	devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password, :remember_me)}
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :dob, :phone_no, :address, :username, :college_name, :email, :password, :remember_me)}
  end
end
