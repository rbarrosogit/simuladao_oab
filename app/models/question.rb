class Question < ApplicationRecord
  belongs_to :topic
  has_many :alternatives
  validates :question_number, :title, :enunciated, :correct_answer, presence: true
end
