class AddPlayerToHouse < ActiveRecord::Migration[7.1]
  def change
    add_reference :houses, :player, foreign_key: true
  end
end
