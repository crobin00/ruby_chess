# frozen_string_literal: true
require_relative './pieces/bishop.rb'
require_relative './pieces/king.rb'
require_relative './pieces/knight.rb'
require_relative './pieces/queen.rb'
require_relative './pieces/rook.rb'

class Board
  attr_reader :board
  def initialize
    @board = Array.new(8) { Array.new(8) }
  end

  def [](position)
    row, col = position
    board[row][col]
  end

  def []=(position, piece)
    row, col = position
    board[row][col] = piece
  end

  def create
    self[[0, 0]] = Rook.new(:white, [0, 0], self)
    self[[0, 1]] = Knight.new(:white, [0, 1], self)
    self[[0, 2]] = Bishop.new(:white, [0, 2], self)
    self[[0, 3]] = Queen.new(:white, [0, 3], self)
    self[[0, 4]] = King.new(:white, [0, 4], self)
    self[[0, 5]] = Bishop.new(:white, [0, 5], self)
    self[[0, 6]] = Knight.new(:white, [0, 6], self)
    self[[0, 7]] = Rook.new(:white, [0, 7], self)

    self[[7, 0]] = Rook.new(:black, [7, 0], self)
    self[[7, 1]] = Knight.new(:black, [7, 1], self)
    self[[7, 2]] = Bishop.new(:black, [7, 2], self)
    self[[7, 3]] = Queen.new(:black, [7, 3], self)
    self[[7, 4]] = King.new(:black, [7, 4], self)
    self[[7, 5]] = Bishop.new(:black, [7, 5], self)
    self[[7, 6]] = Knight.new(:black, [7, 6], self)
    self[[7, 7]] = Rook.new(:black, [7, 7], self)
  end

  def render
    7.downto(0) do |row|
      8.times do |col| 
        position = [row, col]
        print self[position].symbol if !empty?(position)
        print ' ' if empty?(position)
      end
      print "\n"
    end
  end

  def empty?(position)
    row, col = position
    self[[row, col]].nil?
  end

  def in_bounds?(position)
    row, col = position
    return false if row > 7 || row < 0 || col > 7 || col < 0
    true
  end

  def move_piece(start_pos, end_pos)
    self[end_pos] = self[start_pos]
    self[start_pos] = nil
  end
end