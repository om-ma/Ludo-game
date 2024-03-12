class CreateDices < ActiveRecord::Migration[7.1]
  def change
    create_table :dices do |t|
      t.integer :value
      
      t.timestamps
    end
  end
end
