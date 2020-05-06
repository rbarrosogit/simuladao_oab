class CreateResolvedSimulados < ActiveRecord::Migration[6.0]
  def change
    create_table :resolved_simulados do |t|
      t.belongs_to :simulado
      t.belongs_to :user

      t.timestamps
    end
  end
end
