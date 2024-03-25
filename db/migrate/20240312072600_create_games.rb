# db/migrate/xxxxxx_create_games.rb
class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.references :board, foreign_key: true
      t.date :date_played

      t.timestamps
    end
  end
end

