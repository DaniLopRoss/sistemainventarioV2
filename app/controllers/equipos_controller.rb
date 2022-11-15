class EquiposController < ApplicationController
  
  def index
    @equipos = Equipo.all
  end

  def show
    @equipos = Equipo.find(params[:id])
  end

  def new
    @equipos = Equipo.new 
  end

  def create
    @equipos = Equipo.new(equipos_params)
    if @equipos.save
      flash[:notice] = 'EL EQUIPO SE HA GUARDADO EXITOSAMENTE'
      redirect_to equipo_url(@equipos)
    else 
      flash[:error] = 'No se pudo guardar el equipo'
      render :new
  end
end 

  def edit
    @equipos = Equipo.find(params[:id])
  end

  def update
    @equipos= Equipo.find(params[:id])
    if @equipos.update(equipos_params)
      flash[:notice] = 'Equipo se ha actualizo correctamente'
      redirect_to equipo_url(@equipos)
    else 
      flash[:error] = 'No se puedo actualizar'
      render :edit
  end
end 

  def destroy
    @equipos = Equipo.find(params[:id])
    if @equipos.delete
      flash[:notice] ='EL PRODUCTO SE HA ELIMINADO'
      redirect_to equipo_url(@equipos)
    else 
      flash[:error] ='ERROR AL ELIMINAR'
      render :destroy
  end
end 
     

      def equipos_params
        params.require(:equipo).permit(:serie, :tipo ,:modelo, :serial, :observaciones, :ram, :disco_duro, :id_tipos, :id_marca, :id_departamento, :id_area, :id_licencia)
       end 
end 
