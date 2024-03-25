class CreatePieceMovements < ActiveRecord::Migration[7.1]
  def change
    create_table :piece_movements do |t|
      t.references :piece, foreign_key: true
      t.references :game, foreign_key: true
      t.references :base_box, foreign_key: true

      t.timestamps
    end
  end
end
