class CreateBaseBoxes < ActiveRecord::Migration[7.1]
  def change
    create_table :base_boxes do |t|
      t.integer :board_id
      t.integer :position

      t.timestamps
    end
  end
end
