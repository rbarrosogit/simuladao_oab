class Question < ApplicationRecord
  validates :question_number, :title, :enunciated, :correct_answer, presence: true
  validates :question_number, :correct_answer, uniqueness: true
end
