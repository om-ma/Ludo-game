# app/services/game_service/manager.rb
module GameService
  class Manager < ApplicationService
    def call(player_ids)
      initialize_game(player_ids)
    end

    def start_game(game)
      # Logic to start the game
    end

    def check_winner(game)
      # Logic to check for a winner
    end

    private

    def initialize_game(player_ids)
      board_service = BoardService::Creator.new
      board = board_service.call
      game_initializer = GameService::GameInitializer.new(board,player_ids)
      game_initializer.call
    end
  end
end
