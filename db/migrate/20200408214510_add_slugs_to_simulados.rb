class AddSlugsToSimulados < ActiveRecord::Migration[6.0]
  def change
    add_column :simulados, :slug, :string
    add_index :simulados, :slug, unique: true
  end
end
