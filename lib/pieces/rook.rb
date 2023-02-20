# frozen_string_literal: true
require_relative '../../slideable.rb'

class Rook
  attr_reader :color, :position, :board
  include Slideable
  def initialize(color, position, board)
    @color = color
    @position = position
    @board = board
  end

  def enemy?(position)
    !board[position].nil? && board[position].color != color
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