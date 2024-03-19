class CreateInHouseSafeBoxes < ActiveRecord::Migration[7.1]
  def change
    create_table :in_house_safe_boxes do |t|
      t.integer :basebox_id

      t.timestamps
    end
  end
end
