# frozen_string_literal: true
require_relative 'piece.rb'
require_relative '../slideable.rb'

class Bishop < Piece
  include Slideable
  def moves
  [
      [1, 1],
      [-1, -1],
      [1, -1],
      [-1, 1],
  ]
  end
end