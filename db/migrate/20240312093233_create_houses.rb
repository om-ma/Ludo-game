class CreateHouses < ActiveRecord::Migration[7.1]
  def change
    create_table :houses do |t|
      t.references :board, foreign_key: true
      t.string :color
      t.string :piece
      
      t.timestamps
    end
  end
end
