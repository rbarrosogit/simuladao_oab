class SimuladosController < ApplicationController
  before_action :set_simulado, only: [:show]
  def index
    @simulados = Simulado.all
  end

  def show
  end


  private
    def set_simulado
      @simulado = Simulado.friendly.find(params[:id])
    end

end