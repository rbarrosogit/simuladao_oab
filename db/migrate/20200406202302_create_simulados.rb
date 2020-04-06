class CreateSimulados < ActiveRecord::Migration[6.0]
  def change
    create_table :simulados do |t|
      t.string :title
      t.string :subject
      t.string :description
      t.text :question

      t.timestamps
    end
  end
end
