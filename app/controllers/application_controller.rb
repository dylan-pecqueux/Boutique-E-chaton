class ApplicationController < ActionController::Base
	add_flash_types :info, :error, :warning, :success, :notice, :danger

  before_action :configure_devise_parameters, if: :devise_controller?
  protect_from_forgery with: :null_session

    def configure_devise_parameters
			devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :is_alive, :email, :password, :avatar, :password_confirmation)}
			devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :is_alive, :email,:avatar, :password, :password_confirmation, :current_password)}
			
    end
end
