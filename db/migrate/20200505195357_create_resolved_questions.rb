class CreateResolvedQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :resolved_questions do |t|
      t.belongs_to :user
      t.belongs_to :question
      t.belongs_to :resolved_simulado
      t.string :mark
      t.boolean :correct

      t.timestamps
    end
  end
end
