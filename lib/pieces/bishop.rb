# frozen_string_literal: true
require_relative 'piece.rb'

class Bishop < Piece
  def moves
  [
      [1, 1],
      [-1, -1],
      [1, -1],
      [-1, 1],
  ]
  end
end