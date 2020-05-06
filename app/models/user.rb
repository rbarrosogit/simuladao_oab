class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  has_many :resolved_simulados
  has_many :simulados, through: :resolved_simulados
  has_many :resolved_questions

  def first_name
    self.name.blank? ? "" : self.name.split(" ")[0]
  end

end