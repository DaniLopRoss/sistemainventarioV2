class Departamento1sController < ApplicationController
  before_action :set_departamento1, only: [:show, :edit, :update, :destroy  ]
  before_action :set_area1s, only: [:show, :edit, :update, :destroy  ]
  
  # GET /departamento1s or /departamento1s.json
  def index
    @departamento1s = Departamento1.all
  end

  # GET /departamento1s/1 or /departamento1s/1.json
  def show
  end

  # GET /departamento1s/new
  def new
    @departamento1 = Departamento1.new
    @departamento1.build_area1

    @departamento1.area1s.build
  end

  # GET /departamento1s/1/edit
  def edit
    @departamento1 = Departamento1.find(params[:id])
  end

  # POST /departamento1s or /departamento1s.json
  def create
    @departamento1 = Departamento1.new(departamento1_params)

    respond_to do |format|
      if @departamento1.save
        format.html { redirect_to departamento1_url(@departamento1), notice: "Departamento1 was successfully created." }
        format.json { render :show, status: :created, location: @departamento1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @departamento1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departamento1s/1 or /departamento1s/1.json
  def update
    respond_to do |format|
      if @departamento1.update(departamento1_params)
        format.html { redirect_to departamento1_url(@departamento1), notice: "Departamento1 was successfully updated." }
        format.json { render :show, status: :ok, location: @departamento1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @departamento1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departamento1s/1 or /departamento1s/1.json
  def destroy
    @departamento1.destroy

    respond_to do |format|
      format.html { redirect_to departamento1s_url, notice: "Departamento1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departamento1
      @departamento1 = Departamento1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def departamento1_params
      params.require(:departamento1).permit(:nombre, :num_equipo)
    end

    def set_area1s
      @area1s=Area1.all
    end
  end
