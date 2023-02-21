# frozen_string_literal: true
require_relative 'piece.rb'
require_relative '../slideable.rb'

class Rook < Piece
  attr_reader :symbol
  include Slideable

  def initialize(color, position, board)
    super
    @symbol = color == :white ? '♖' : '♜'
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