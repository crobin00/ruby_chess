# frozen_string_literal: true
require_relative 'piece.rb'

class Queen < Piece
  def moves
  [
      [1, 0],
      [-1, 0],
      [0, 1],
      [0, -1],
      [1, 1],
      [-1, -1],
      [1, -1],
      [-1, 1],
  ]
  end
end