class ApplicationController < ActionController::Base
  bofere_action :configure_permitted_parameters, if: :devise_controller?

  private
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:company_name, :company_introduction, :university, :first_name, :last_name, :student_introduction, :skill, :age, :year])
    end

end
