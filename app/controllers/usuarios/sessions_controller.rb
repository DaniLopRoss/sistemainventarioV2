# frozen_string_literal: true

class Usuarios::SessionsController < Devise::SessionsController
  def create
    usuario = Usuario.find_by_email(params[:usuario][:email])

    if usuario && usuario.confirmed? && usuario.valid_password?(params[:usuario][:password])
      sign_in(usuario)
      redirect_to root_path
    else
      flash.now[:alert] = 'Correo electrónico o contraseña incorrectos.'
      render :new
    end
  end
end