class Simulado < ApplicationRecord
  extend FriendlyId
  has_many :topics

  validates :title, :numofquestions, :year, :subtitle, :exambank, presence: true
  validates :title,  uniqueness: true

  friendly_id :title, use: [:slugged, :history]
end
