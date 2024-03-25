class LudoGameServiceManager
    def initialize
      @board_service = BoardService::Creator.new
      @game_service = GameService::Manager.new(@board_service.create_board)
    end
  
    def create_game(player_ids)
      @game_service.create(player_ids)
    end
  
    def start_game
      @game_service.start
    end
  
    def check_winner
      @game_service.check_winner
    end
  end