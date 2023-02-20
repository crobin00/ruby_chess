require_relative '../lib/board.rb'
describe Board do
  describe '#[]' do
    subject(:board) { described_class.new }
    let(:piece) { double }
    
    before do
      board.board[1][1] = piece
      board.board[4][5] = piece
    end

    context 'when choosing board[[1, 1]]' do
      it 'returns board[1][1]' do
        expect(board[[1, 1]]).to eq(piece)
      end
    end

    context 'when choosing board[[4, 5]]' do
      it 'returns board[4][5]' do
        expect(board[[4, 5]]).to eq(piece)
      end
    end
  end
  
  describe '#[]=' do
    subject(:board) { described_class.new }
    let(:piece) { double }

    context 'when placing piece at board[[1, 1]]' do
      it 'places piece at board[1][1]' do
        board[[1, 1]] = piece
        expect(board.board[1][1]).to eq(piece)
      end
    end

    context 'when placing piece at board[[7, 7]]' do
      it 'places piece at board[7][7]' do
        board[[7, 7]] = piece
        expect(board.board[7][7]).to eq(piece)
      end
    end
  end

  describe '#empty?' do
    subject(:board) { described_class.new }
    let(:piece) { double }

    before do
      board.board[4][5] = piece
    end

    context 'when position is empty' do
      it 'returns true' do
        return_value = board.empty?([2, 2])
        expect(return_value).to be(true)
      end
    end

    context 'when position is not empty' do
      it 'returns false' do
        return_value = board.empty?([4, 5])
        expect(return_value).to be(false)
      end
    end
  end

  describe '#in_bounds?' do
    subject(:board) { described_class.new }

    context 'when position is in bounds' do
      it 'returns true' do
        return_value = board.in_bounds?([3, 6])
        expect(return_value).to be(true)
      end
    end

    context 'when position is not in bounds' do
      it 'returns false' do
        return_value = board.in_bounds?([8, 1])
        expect(return_value).to be(false)
      end
    end
  end
end