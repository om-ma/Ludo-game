module BoardService
  class Creator < ApplicationService
    def call
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
      total_boxes = 72
      base_boxes = []

      total_boxes.times do
        base_boxes << BaseBox.new
      end

      base_boxes
    end
  end
end
