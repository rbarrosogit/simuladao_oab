class SimuladosController < ApplicationController
  before_action :set_simulado, only: [:show, :finish, :show_results]
  before_action :authenticate_user!, only: :show

  def index
    @simulados = Simulado.all
  end

  def show
  end

  def finish
    @resolved_simulado = ResolvedSimulado.create(user_id: current_user.id, simulado_id: @simulado.id)
    params.each do |key, value|
      splited_key = key.split("-")
      if (splited_key.length == 2 and splited_key.first == "question")
        question_id = splited_key.last
        question = Question.find(question_id)
        @resolved_questions = ResolvedQuestion.create(question_id: question_id, mark: value, correct: (value == question.correct_answer), user_id: current_user.id, resolved_simulado_id: @resolved_simulado.id)
      end  
    end

    @answers = current_user.resolved_questions.where(resolved_simulado_id: @resolved_simulado.id)
    @count_right = @answers.where(correct: true).size
    @count_wrong = @answers.where(correct: false).size
    @percent = ((@count_right / @answers.size.to_f) * 100).to_i

    if @percent >= 50
      @percent_message = "Parabéns, você acertou mais da metade da prova."
      if @percent == 100
        @percent_message = "Incrível, você gabaritou a prova! Parabéns!"
      end
    else
      @percent_message = "Que pena, parece que você precisa estudar mais."
    end

  end

  def simulado_results
    @resolved_simulado = ResolvedSimulado.find(params[:id])
    @answers = current_user.resolved_questions.where(resolved_simulado_id: @resolved_simulado.id)
  end

  private
    def set_simulado
      @simulado = Simulado.friendly.find(params[:id])
    end

end

