class CreateInHouseSafeBoxes < ActiveRecord::Migration[7.1]
  def change
    create_table :in_house_safe_boxes do |t|
      t.references :base_box, foreign_key: true, index: true
      
      t.timestamps
    end
  end
end
