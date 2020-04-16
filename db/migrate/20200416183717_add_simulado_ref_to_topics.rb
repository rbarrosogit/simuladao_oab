class AddSimuladoRefToTopics < ActiveRecord::Migration[6.0]
  def change
    add_reference :topics, :simulado, foreign_key: true
  end
end
