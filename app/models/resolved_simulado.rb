class ResolvedSimulado < ApplicationRecord
  belongs_to :user
  belongs_to :simulado
  has_many :resolved_questions
end
