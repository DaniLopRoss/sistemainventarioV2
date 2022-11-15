class UsuariosController < ApplicationController
         before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
         before_action :admin_usuario,     only: :destroy

         def index
          @usuarios = Usuario.all
         end

         def show 
         end 
         def new 
          @usuarios = Usuario.new
         end 

         def create 
          @usuarios = Usuario.new(usuario_params)
          if @usuarios.save
            flash[:notice] = 'EL USUARIO SE HA GUARDADO EXITOSAMENTE'
          redirect_to usuarios_url(@usuarios)
         else 
          flash[:error] = 'No se pudo guardar el usuario'
          render :new
  end

         def update 
                  @usuarios = Usuario.find(params[:id])

                  if @usuarios.update(params[:usuarios])
                           redirect_to :action => :show, :id => @usuarios.rfc
                  else 
                           render 'edit'
                  end 
         end 

         def destroy 
                  @usuarios = Usuario.find(params[:rfc])
                  @usuario.destroy
                  flash[:success] = "Usuario eliminado"
                  redirect_to :action => :index
         end 


         private
         def set_usuario
                  @usuarios = Equipo.find(params[:id])
         end 

         def admin_usuario
                  redirect_to(root_url) unless current_user.admin?
                end
        def usuario_params
          params.require(:usuarios).permit(:rfc, :nombre, :apellidouno, :apellidodos, :role, :correo, :Contraseña)
        end 


end
end 
