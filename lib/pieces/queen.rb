# frozen_string_literal: true
require_relative 'piece.rb'
require_relative '../slideable.rb'

class Queen < Piece
  include Slideable
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