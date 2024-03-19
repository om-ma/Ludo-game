class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.integer :board_id
      t.date :dateplayed

      t.timestamps
    end
  end
end
