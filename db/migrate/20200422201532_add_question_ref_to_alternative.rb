class AddQuestionRefToAlternative < ActiveRecord::Migration[6.0]
  def change
    add_reference :alternatives, :question, foreign_key: true
  end
end
