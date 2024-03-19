class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :color
      t.integer :game_played
      t.integer :game_won

      t.timestamps
    end
  end
end
