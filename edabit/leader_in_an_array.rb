module LeaderInArray
  def self.find_leader(array)
    result = []
    (0..array.length - 1).each do |index|
      candidate = array[index]
      broke = true

      if index == array.length - 1
        broke = false
      else
        ((index + 1)..(array.length - 1)).each do |index2|
          break if candidate <= array[index2]

          broke = false if index2 == array.length - 1
        end
      end

      result << candidate unless broke
    end

    result
  end
end

require 'rspec'

describe LeaderInArray do
  describe '.find_leader' do
    context 'when an array contains an element greater than following elements' do
      let!(:array) { [2, 3, 20, 15, 8, 3] }

      it 'returns a new array of all elements greater than the following elements' do
        expect(LeaderInArray.find_leader(array)).to eq([20, 15, 8, 3])
      end
    end

    context 'when the largest element is the last element' do
      let!(:array) { [1, 2, 3, 4, 5] }

      it 'returns that last element' do
        expect(LeaderInArray.find_leader(array)).to eq([5])
      end
    end

    context 'when accounting for the last element' do
      let!(:array) { [8, 7, 1, 2, 10, 3, 5] }

      it 'returns that last element since it is greater than those following (0)' do
        expect(LeaderInArray.find_leader(array)).to eq([10, 5])
      end
    end
  end
end
