class CreateSimulados < ActiveRecord::Migration[6.0]
  def change
    create_table :simulados do |t|
      t.string :title
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
