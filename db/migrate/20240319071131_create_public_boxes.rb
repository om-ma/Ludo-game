class CreatePublicBoxes < ActiveRecord::Migration[7.1]
  def change
    create_table :public_boxes do |t|
      t.integer :basebox_id

      t.timestamps
    end
  end
end
