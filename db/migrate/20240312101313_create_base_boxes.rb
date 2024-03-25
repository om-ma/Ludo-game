class CreateBaseBoxes < ActiveRecord::Migration[7.1]
  def change
    create_table :base_boxes do |t|
      t.references :board, foreign_key: true
      t.integer :position
      
      t.timestamps
    end
  end
end
