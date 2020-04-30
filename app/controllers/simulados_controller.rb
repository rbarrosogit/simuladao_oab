class SimuladosController < ApplicationController
  before_action :set_simulado, only: [:show]
  before_action :authenticate_user!, only: [:show]

  def index
    @simulados = Simulado.all
  end

  def show
  end

  def finish
    @answers = []
    @cont = 0
    @cont_wrong = 0
    params.each do |key, value|
      splited_key = key.split("-")
      if (splited_key.length == 2 and splited_key.first == "question")
        question_id = splited_key.last
        question = Question.find(question_id)
        if value == question.correct_answer
          @cont += 1
          @answers << question_id
          @answers << question.correct_answer.upcase
          @answers << 1
        else
          @cont_wrong += 1
          @answers << question_id
          @answers << question.correct_answer.upcase
          @answers << 0
        end
      end  
    end
    @percent = ((@cont / 5.0) * 100).to_i
    if @percent >= 50
      @percent_message = "Parabéns, você acertou mais da metade da prova."
      if @percent == 100
        @percent_message = "Incrível, você gabaritou a prova! Parabéns!"
      end
    else
      @percent_message = "Que pena, parece que você precisa estudar mais."
    end
  end
  

  private
    def set_simulado
      @simulado = Simulado.friendly.find(params[:id])
    end

end