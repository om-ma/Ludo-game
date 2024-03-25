class CreatePublicBoxes < ActiveRecord::Migration[7.1]
  def change
    create_table :public_boxes do |t|
      t.references :base_box, foreign_key: true, index: true

      t.timestamps
    end
  end
end
