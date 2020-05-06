class Simulado < ApplicationRecord
  extend FriendlyId
  has_many :topics
  has_many :resolved_simulados
  has_many :users, through: :resolved_simulados

  validates :title, :numofquestions, :year, :subtitle, :exambank, presence: true
  validates :title,  uniqueness: true

  friendly_id :title, use: [:slugged, :history]
end
