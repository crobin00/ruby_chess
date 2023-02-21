# frozen_string_literal: true
require_relative 'piece.rb'
require_relative '../steppable.rb'

class Knight < Piece
  attr_reader :symbol
  include Steppable

  def initialize(color, position, board)
    super
    @symbol = color == :white ? '♘' : '♞'
  end

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