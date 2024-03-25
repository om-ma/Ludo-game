class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :color
      t.integer :game_played, default: 0
      t.integer :game_won, default: 0 
      
      t.timestamps
    end
  end
end
