class Equipos1sController < ApplicationController
  before_action :set_equipo1s, only: %i[ show edit update destroy ]


  def index
    @equipos1s = Equipos1.all
  end

  def show
    @equipos1s = Equipos1.find(params[:id])
  end

  def new
    @equipos1s = Equipos1.new 
  end

  def create
    @equipos1s = Equipos1.new(equipos_params)
    if @equipos1s.save
      flash[:notice] = 'EL EQUIPO SE HA GUARDADO EXITOSAMENTE'
      redirect_to equipo_url(@equipos1s)
    else 
      flash[:error] = 'No se pudo guardar el equipo'
      render :new
  end
end 

  def edit
    @equipos1s = Equipos1.find(params[:id])
  end

  def update
    @equipos1s= Equipos1.find(params[:id])
    if @equipos1s.update(equipos_params)
      flash[:notice] = 'Equipo se ha actualizo correctamente'
      redirect_to equipo_url(@equipos1s)
    else 
      flash[:error] = 'No se puedo actualizar'
      render :edit
  end
end 

  def destroy
    @equipos1s = Equipos1.find(params[:id])
    if @equipos1s.delete
      flash[:notice] ='EL PRODUCTO SE HA ELIMINADO'
      redirect_to equipo_url(@equipos1s)
    else 
      flash[:error] ='ERROR AL ELIMINAR'
      render :destroy
  end
end 
     

      def equipos_params
        params.require(:equipos1s).permit(:serie, :tipo ,:modelo, :serial, :observaciones, :ram, :disco_duro, :id_tipos, :id_marca, :id_departamento, :id_area, :id_licencia)
       end 
end 

