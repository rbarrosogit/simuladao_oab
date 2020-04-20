class AddNewMethodsToSimulados < ActiveRecord::Migration[6.0]
  def change
    add_column :simulados, :numofquestions, :string, null: false
    add_column :simulados, :year, :string, null: false
    add_column :simulados, :subtitle, :string, null: false
    add_column :simulados, :exambank, :string, null: false
    remove_column :simulados, :subject, :string
    remove_column :simulados, :description, :string
  end
end
