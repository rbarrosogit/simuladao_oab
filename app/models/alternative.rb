class Alternative < ApplicationRecord
  belongs_to :question
  validates :text, :letter, presence: true
end