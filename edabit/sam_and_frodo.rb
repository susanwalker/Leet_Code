module SamAndFrodo
  def self.close_friends(arr)
    (arr.index('Sam') - arr.index('Frodo') == 1) || (arr.index('Frodo') - arr.index('Sam') == 1)
  end
end

require 'rspec/autorun'

describe SamAndFrodo do
  describe '.close_friends' do
    context 'when Frodo then Sam are in order in array' do
      let!(:arr) { %w[Frodo Sam Gandalf] }

      it 'returns true' do
        expect(SamAndFrodo.close_friends(arr)).to eq(true)
      end
    end

    context 'when Sam then Frodo are in order in array' do
      let!(:arr) { %w[Orc Sam Frodo Legolas] }

      it 'returns true' do
        expect(SamAndFrodo.close_friends(arr)).to eq(true)
      end
    end

    context 'when Sam and Frodo are not next to each other in array' do
      let!(:arr) { %w[Frodo Saruman Sam] }

      it 'returns false' do
        expect(SamAndFrodo.close_friends(arr)).to eq(false)
      end
    end
  end
end