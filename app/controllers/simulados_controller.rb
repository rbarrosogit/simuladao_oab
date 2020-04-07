class SimuladosController < ApplicationController
  def index
    @simulados = Simulado.all
  end
  
