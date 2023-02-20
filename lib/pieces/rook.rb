# frozen_string_literal: true
require_relative 'piece.rb'
require_relative '../slideable.rb'

class Rook < Piece
  include Slideable
  def moves
    [
      [1, 0],
      [-1, 0],
      [0, 1],
      [0, -1]
    ]
  end
end