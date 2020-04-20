class CreateAlternatives < ActiveRecord::Migration[6.0]
  def change
    create_table :alternatives do |t|
      t.text :text, null: false
      t.string :letter, null: false, unique: true

      t.timestamps
    end
  end
end
