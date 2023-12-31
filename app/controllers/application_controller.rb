class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    include Pagy::Backend
  
    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :role])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :role])
    end
  
    def after_sign_in_path_for(resource)
      root_path  # Redirige al usuario a la ruta root una vez que se ha logueado
    end


  end