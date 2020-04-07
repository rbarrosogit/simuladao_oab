class Simulado < ApplicationRecord
  validates :title, :subject, :description, :question, presence: true
  validates :title, uniqueness: true
end
