# frozen_string_literal: true
require_relative 'piece.rb'
require_relative '../steppable.rb'

class King < Piece
  include Steppable
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