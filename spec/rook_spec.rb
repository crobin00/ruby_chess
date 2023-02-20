require_relative '../lib/pieces/rook.rb'
require_relative '../lib/board.rb'
describe Rook do
  describe '#valid_moves' do
    context 'when position is [4, 4]' do
      let(:board) { Board.new }
      subject(:rook) { described_class.new(:black, [4, 4], board) }

      before do
        board[rook.position] = rook
      end
        it 'returns all valid moves' do
          valid_moves = rook.valid_moves
          expect(valid_moves).to match_array([[0, 4], [1, 4], [2, 4], [3, 4], [4, 0], [4, 1], [4, 2], [4, 3], [4, 5], [4, 6], [4, 7], [5, 4], [6, 4], [7, 4]])
        end
    end

    context 'when position is [1, 3] and other pieces in path' do
      let(:board) { Board.new }
      subject(:rook) { described_class.new(:black, [4, 4], board) }

      before do
        board[rook.position] = rook
        board[[4, 3]] = described_class.new(:white, [4, 3], board)
        board[[4, 5]] = described_class.new(:black, [4, 5], board)
        board[[5, 4]] = described_class.new(:white, [5, 4], board)
        board[[2, 4]] = described_class.new(:black, [2, 4], board)
      end

        it 'returns all valid moves' do
          valid_moves = rook.valid_moves
          expect(valid_moves).to match_array([[3, 4], [4, 3], [5, 4]])
        end
    end
  end
end