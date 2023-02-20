require_relative '../lib/pieces/piece.rb'
require_relative '../lib/board.rb'
describe Piece do
  describe '#enemy?' do
    context 'when position is [4, 5] and enemy is there' do
      let(:board) { Board.new }
      subject(:piece) { described_class.new(:black, [4, 5], board) }

      before do
        board[piece.position] = piece
        board[[4, 5]] = described_class.new(:white, [4, 5], board)
      end

      it 'returns true' do
        return_value = piece.enemy?([4, 5])
        expect(return_value).to be(true)
      end
    end

    context 'when position is [4, 5] and enemy is not there' do
      let(:board) { Board.new }
      subject(:piece) { described_class.new(:black, [4, 5], board) }

      before do
        board[piece.position] = piece
      end

      it 'returns false' do
        return_value = piece.enemy?([4, 5])
        expect(return_value).to be(false)
      end
    end
  end
end