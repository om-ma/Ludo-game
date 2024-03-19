class CreatePieceMovements < ActiveRecord::Migration[7.1]
  def change
    create_table :piece_movements do |t|
      t.integer :piece_id
      t.integer :basebox_id

      t.timestamps
    end
  end
end
