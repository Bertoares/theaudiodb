class ApplicationController < ActionController::Base

    # antes de hacer cualquier cosa, es necesario autenticar el usuario
    before_action :authenticate_user!
    
    def after_sign_in_path_for(resource)
        user_path(current_user)
    end

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

end