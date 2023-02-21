# frozen_string_literal: true

class Player
  RANK_TO_COL = {
    a: 0,
    b: 1,
    c: 2,
    d: 3,
    e: 4,
    f: 5,
    g: 6,
    h: 7
  }

  attr_reader :color
  def initialize(color)
    @color = color
  end

  def get_pos_input
    loop do
      input = gets.chomp.split('')
      return [input.last.to_i - 1, RANK_TO_COL[input.first.to_sym]] if validate_input(input)
      puts 'Invalid input'
    end
  end

  def validate_input(input)
    case input
    in [String, String]
    else
      return false
    end

    return false if !(input.first.ord.between?(65, 72) || input.first.ord.between?(97, 104))
    return false if !input.last.ord.between?(49, 56)
    true
  end
end