class CreateSimulados < ActiveRecord::Migration[6.0]
  def change
    create_table :simulados do |t|
      t.string :title, null: false, unique: true
      t.string :subject, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end