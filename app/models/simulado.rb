class Simulado < ApplicationRecord
  validates :title, :subject, :description, presence: true
  validates :title, uniqueness: true
end
