class CreateSimuladosUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :simulados_users do |t|
      t.belongs_to :simulado
      t.belongs_to :user
    end
  end
end
