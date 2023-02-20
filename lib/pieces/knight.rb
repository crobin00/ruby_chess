# frozen_string_literal: true
require_relative 'piece.rb'
require_relative '../steppable.rb'

class Knight < Piece
  include Steppable
  def moves
  [
      [1, 2],
      [1, -2],
      [-1, 2],
      [-1, -2],
      [2, 1],
      [2, -1],
      [-2, 1],
      [-2, -1],
  ]
  end
end