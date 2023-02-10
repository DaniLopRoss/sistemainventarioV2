class Equipo12Controller < ApplicationController

 # load_and_authorize_resource
  before_action :set_equipo12, only: [:show, :edit, :update, :destroy]
  before_action :set_tipos, only: [:new, :edit, :create]
  
  def index
    @equipo12 = Equipo12.all
  end

  def show
    
    
  end

  def new
    @equipo12 = Equipo12.new 
  end

  def create
   
    @equipo12 = Equipo12.new(equipo_params)
    if @equipo12.save
      flash[:notice] = 'EL EQUIPO SE HA GUARDADO EXITOSAMENTE'
      redirect_to equipo12_index_url
    else 
      flash[:error] = 'No se pudo guardar el equipo'
      render :new
  end   
  end

  def edit
    @equipo12 = Equipo12.find(params[:id])
   
  end

  def update
    @equipo12= Equipo12.find(params[:id])
    if @equipo12.update(equipo_params)
      flash[:notice] = 'Equipo se ha actualizo correctamente'
      redirect_to equipo12_index_url
    else 
      flash[:error] = 'No se puedo actualizar'
      render :edit
  end
  end

  def destroy
    @equipo12 = Equipo12.find(params[:id])
    if @equipo12.delete
      flash[:notice] ='EL EQUIPO SE HA ELIMINADO'
      redirect_to equipo12_index_url
    else 
      flash[:error] ='ERROR AL ELIMINAR'
      render :destroy
  end
  end

  def set_equipo12
    @equipo12 = Equipo12.find(params[:id])
  end 

  def equipo_params
    params.require(:equipo12).permit( :serie, :tipo, :modelo, :serial, :observaciones, :ram, :estatus, :disco_duro, :id_tipo , :id_marcas, :id_departamentos, :id_areas, :id_licencias, :fecharegistro)
end

def set_tipos
  @tipos= Tipo.all
end

end 
