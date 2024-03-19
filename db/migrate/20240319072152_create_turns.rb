class CreateTurns < ActiveRecord::Migration[7.1]
  def change
    create_table :turns do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :dice_id

      t.timestamps
    end
  end
end
