# frozen_string_literal: true

class Board
  attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def [](position)
    row, col = position
    board[row][col]
  end

  def []=(position, piece)
    row, col = position
    board[row][col] = piece
  end
end