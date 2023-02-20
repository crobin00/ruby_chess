# frozen_string_literal: true

class Rook
  attr_reader :color, :position, :board
  def initialize(color, position, board)
    @color = color
    @position = position
    @board = board
  end

  def enemy?(position)
    !board[position].nil? && board[position].color != color
  end

  def valid_moves
    available_moves = []
    moves.each do |(dr, dc)|
      current_dr, current_dc = position
      loop do
        current_dr += dr
        current_dc += dc
        current_position = [current_dr, current_dc]
        break if !board.in_bounds?(current_position)
        if enemy?(current_position)
          available_moves << current_position
          break
        end
        break if !board.empty?(current_position) # same colored piece
        available_moves << current_position
      end
    end
    available_moves
  end

  def moves
    [
      [1, 0],
      [-1, 0],
      [0, 1],
      [0, -1]
    ]
  end
end