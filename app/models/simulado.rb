class Simulado < ApplicationRecord
  extend FriendlyId

  validates :title, :subject, :description, presence: true
  validates :title, uniqueness: true

  friendly_id :title, use: [:slugged, :history]
end
