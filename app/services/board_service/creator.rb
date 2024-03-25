module BoardService
    class Creator
      def create_board
        board = Board.new
        board.houses.build(create_houses)
        board.base_boxes.build(create_base_boxes)
        board
      end
  
      private
  
      def create_houses
        colors = ['red', 'green', 'blue', 'yellow']
        colors.map { |color| { color: color } }
      end
  
      def create_base_boxes
        [
          HouseStopBox.new,
          InHouseSafeBox.new,
          PublicBox.new,
          PublicStopBox.new
        ]
      end
    end
  end