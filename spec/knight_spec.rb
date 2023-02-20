require_relative '../lib/pieces/knight.rb'
require_relative '../lib/board.rb'
describe Knight do
  describe '#valid_moves' do
    context 'when position is [4, 4]' do
      let(:board) { Board.new }
      subject(:knight) { described_class.new(:black, [4, 4], board) }

      before do
        board[knight.position] = knight
      end
        it 'returns all valid moves' do
          valid_moves = knight.valid_moves
          expect(valid_moves).to match_array([[2, 3], [2, 5], [3, 2], [3, 6], [5, 2], [5, 6], [6, 3], [6, 5]])
        end
    end

    context 'when position is [1, 3] and other pieces in path' do
      let(:board) { Board.new }
      subject(:knight) { described_class.new(:black, [4, 4], board) }

      before do
        board[knight.position] = knight
        board[[6, 5]] = described_class.new(:white, [6, 5], board)
        board[[5, 2]] = described_class.new(:black, [5, 2], board)
      end

        it 'returns all valid moves' do
          valid_moves = knight.valid_moves
          expect(valid_moves).to match_array([[2, 3], [2, 5], [3, 2], [3, 6], [5, 6], [6, 3], [6, 5]])
        end
    end
  end
end