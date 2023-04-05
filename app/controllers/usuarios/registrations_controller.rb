class RegistrationsController < Devise::RegistrationsController
  def create
    @usuario = Usuario.new(user_params)
    if @usuario.save
      puts "Confirmation token: #{@usuario.confirmation_token}"
      flash[:notice] = "¡Registro exitoso! Por favor verifica tu correo electrónico para confirmar tu cuenta."
      redirect_to confirmation_instructions_path(:usuario, email: @usuario.email)
    else
      render :new
    end
  end
  




  def after_sign_up_path_for(resource)
    new_usuario_confirmation_path
  end
  
  def after_inactive_sign_up_path_for(resource)
    if resource.is_a?(Usuario)
      Usuarios::ConfirmationsController.action(:new).call(request.env)
    else
      super
    end
  end  
end
