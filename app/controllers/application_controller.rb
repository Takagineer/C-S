class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :company_introduction, :university, :first_name, :last_name, :student_introduction, :skill, :birthday, :year, :image])
      devise_parameter_sanitizer.permit(:account_update, keys: [:company_name, :company_introduction, :university, :first_name, :last_name, :student_introduction, :skill, :birthdau, :year, :image])
    end

end