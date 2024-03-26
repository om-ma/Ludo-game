# app/services/game_service/game_initializer.rb
module GameService
    class GameInitializer < ApplicationService
      def initialize(board,player_ids)
        @board = board
        @player_ids = player_ids
      end
  
      def call
        game = Game.new(board: @board)
        game.players << Player.where(id: @player_ids)
        initialize_game_board(game)
        assign_pieces_to_houses(game)
        determine_first_player(game)
        game
      end
  
      private
  
      def initialize_game_board(game)
        players = game.players
      
        houses = @board.houses
        # Assign each house to a player
        houses.each_with_index do |house, index|
          house.player = players[index]
        end
      
        # Leave any remaining houses unassigned
        unassigned_houses = @board.houses.offset(players.count)
        unassigned_houses.each do |house|
          house.player = nil
        end
      end
          
  
      def assign_pieces_to_houses(game)
        houses = game.board.houses
      
        houses.each do |house|
          4.times { house.pieces.build }
        end
      end
      
  
      def determine_first_player(game)
        players = game.players
        first_player = players.sample
      
        # You can perform further actions with the first player if needed
        puts "The first player is #{first_player.name}."
      
        first_player
      end
      
    end
  end
  