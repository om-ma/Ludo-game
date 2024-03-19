class CreatePlayergames < ActiveRecord::Migration[7.1]
  def change
    create_table :playergames do |t|
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end
