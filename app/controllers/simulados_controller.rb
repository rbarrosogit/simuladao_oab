class SimuladosController < ApplicationController
  before_action :set_simulado, only: [:show, :edit, :update, :destroy]

  # GET /simulados
  # GET /simulados.json
  def index
    @simulados = Simulado.all
  end

  # GET /simulados/1
  # GET /simulados/1.json
  def show
  end

  # GET /simulados/new
  def new
    @simulado = Simulado.new
  end

  # GET /simulados/1/edit
  def edit
  end

  # POST /simulados
  # POST /simulados.json
  def create
    @simulado = Simulado.new(simulado_params)

    respond_to do |format|
      if @simulado.save
        format.html { redirect_to @simulado, notice: 'Simulado was successfully created.' }
        format.json { render :show, status: :created, location: @simulado }
      else
        format.html { render :new }
        format.json { render json: @simulado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simulados/1
  # PATCH/PUT /simulados/1.json
  def update
    respond_to do |format|
      if @simulado.update(simulado_params)
        format.html { redirect_to @simulado, notice: 'Simulado was successfully updated.' }
        format.json { render :show, status: :ok, location: @simulado }
      else
        format.html { render :edit }
        format.json { render json: @simulado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simulados/1
  # DELETE /simulados/1.json
  def destroy
    @simulado.destroy
    respond_to do |format|
      format.html { redirect_to simulados_url, notice: 'Simulado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simulado
      @simulado = Simulado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def simulado_params
      params.require(:simulado).permit(:title, :type, :description)
    end
end
