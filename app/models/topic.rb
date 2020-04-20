class Topic < ApplicationRecord
  belongs_to :simulado
  has_many :questions
  validates :title, presence: true
end
