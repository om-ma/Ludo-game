class CreatePieces < ActiveRecord::Migration[7.1]
  def change
    create_table :pieces do |t|
      t.references :house, foreign_key: true
      t.integer :position
      
      t.timestamps
    end
  end
end
