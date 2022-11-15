class ApplicationController < ActionController::Base

         before_action :configure_permitted_parameters, if: :devise_controller?

        


         protected

         def configure_permitted_parameters
             devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :nombre, :rfc, :apellidouno, :apellidodos, :role]) 
             devise_parameter_sanitizer.permit(:account_update, keys: [:email, :nombre, :rfc, :apellidouno, :apellidodos, :role])
         end

         
         def current_user
          return unless session[:usuario_id]
          @current_usuario ||= Usuario.find(session[:usuario_id])
        end
      
        rescue_from CanCan::AccessDenied do |exception|
          redirect_to root_url, :alert => exception.message
          end
          

    private 
    
     
     def require_sing_out
        unless usuario_sign_out?
          redirect_to usuarios/sign_in,
          alert: "Please, Sign In first!"
     
      end
    end 


end 

