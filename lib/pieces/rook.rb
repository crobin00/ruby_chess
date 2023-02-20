# frozen_string_literal: true
require_relative 'piece.rb'

class Rook < Piece
  def moves
    [
      [1, 0],
      [-1, 0],
      [0, 1],
      [0, -1]
    ]
  end
end