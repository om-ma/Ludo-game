class AddAttributesToBaseBoxes < ActiveRecord::Migration[7.1]
  def change
    add_column :base_boxes, :category, :string
  end
end
