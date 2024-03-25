class RemoveWinnerFromGames < ActiveRecord::Migration[7.1]
  def change
    remove_reference :games, :winner, foreign_key: { to_table: :players }
  end
end
