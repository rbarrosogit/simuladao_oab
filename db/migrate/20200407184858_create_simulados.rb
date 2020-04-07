class CreateSimulados < ActiveRecord::Migration[6.0]
  def change
    create_table :simulados do |t|
      t.string :title, presence: true, unique: true
      t.string :subject, presence: true
      t.string :description, presence: true
      t.text :question, presence: true

      t.timestamps
    end
  end
end