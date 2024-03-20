class CreatePlayersGames < ActiveRecord::Migration[7.1]
  def change
    create_table :player_games do |t|
      t.references :player, foreign_key: true
      t.references :game, foreign_key: true
      
      t.timestamps
    end
  end
end
