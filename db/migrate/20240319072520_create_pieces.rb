class CreatePieces < ActiveRecord::Migration[7.1]
  def change
    create_table :pieces do |t|
      t.integer :house_id
      t.integer :position

      t.timestamps
    end
  end
end
