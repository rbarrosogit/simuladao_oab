class ResolvedQuestion < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :resolved_simulado
end
