class Alternative < ApplicationRecord
  validates :text, :letter, presence: true
  validates :letter, uniqueness: true
end
