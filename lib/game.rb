# frozen_string_literal: true
require_relative 'player.rb'

class Game
  attr_reader :board, :player1, :player2, :current_player
  def initialize(board, player1, player2)
    @board = board
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def play
    start_pos, end_pos = move_piece_input
    board.move_piece(start_pos, end_pos)
    board.render
  end

  def move_piece_input
    start_pos = nil
    end_pos = nil
    loop do
      start_pos = current_player.get_pos_input
      break if !board[start_pos].nil? && board[start_pos].color == current_player.color
      puts 'Selected invalid piece'
    end
    
    loop do
      end_pos = current_player.get_pos_input
      break if board[start_pos].valid_moves.include?(end_pos)
      puts 'Selected invalid move'
    end
   [start_pos, end_pos]
  end

end