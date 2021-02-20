module FindSecondLargest
  def self.find_second_max(array)
    max = array.max
    array.delete(max)
    array.max
  end
end

require 'rspec'

describe FindSecondLargest do
  describe '.find_second_max' do
    context 'when given an array of nums' do
      let!(:array) { [10, 40, 30, 50, 20] }

      it 'returns the second highest num' do
        expect(FindSecondLargest.find_second_max(array)).to eq(40)
      end
    end
  end
end