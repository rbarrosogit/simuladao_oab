class SimuladosController < ApplicationController
  before_action :set_simulado, only: [:show]
  def index
    @simulados = Simulado.all
  end

  def show
  end

  def finish
    p "============================================="
    p "passou aqui"
    p "============================================="
    byebug
  end


  private
    def set_simulado
      @simulado = Simulado.friendly.find(params[:id])
    end

end