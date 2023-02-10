class Area1sController < ApplicationController
  before_action :set_area1, only:[ :show, :edit, :update, :destroy ]

  before_action :set_departamento1s
  # GET /area1s or /area1s.json
  def index
    @area1s = Area1.all
  end

  # GET /area1s/1 or /area1s/1.json
  def show
  end

  # GET /area1s/new
  def new
    @area1 = Area1.new
    
  end

  # GET /area1s/1/edit
  def edit
    @area1 = Area1.find(params[:id])
  end

  # POST /area1s or /area1s.json
  def create
    @area1 = Area1.new(area1_params)

    respond_to do |format|
      if @area1.save
        format.html { redirect_to area1_url(@area1), notice: "Area1 was successfully created." }
        format.json { render :show, status: :created, location: @area1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @area1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area1s/1 or /area1s/1.json
  def update
    respond_to do |format|
      if @area1.update(area1_params)
        format.html { redirect_to area1_url(@area1), notice: "Area1 was successfully updated." }
        format.json { render :show, status: :ok, location: @area1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @area1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area1s/1 or /area1s/1.json
  def destroy
    @area1.destroy

    respond_to do |format|
      format.html { redirect_to area1s_url, notice: "Area1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  
    # Use callbacks to share common setup or constraints between actions.
   
    # Only allow a list of trusted parameters through.
    def area1_params
      params.require(:area1).permit(:nombre, :id_departamento)
          end

          def set_area1
            @area1 = Area1.find(params[:id])
          end
      

    def set_departamento1s
      @departamento1s = Departamento1.all
    end

end
