module Steppable
  def valid_moves
    available_moves = []
    moves.each do |(dr, dc)|
      current_dr, current_dc = position
      current_dr += dr
      current_dc += dc
      current_position = [current_dr, current_dc]
      next if !board.in_bounds?(current_position)
      if enemy?(current_position)
        available_moves << current_position
        next
      end
      next if !board.empty?(current_position) # same colored piece
      available_moves << current_position
    end
    available_moves
  end
end