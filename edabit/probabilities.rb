module Probability
  def self.prob_greater_or_equal(array, num)
    greater_than_nums = []

    array.each do |element|
      greater_than_nums << element if element >= num
    end

    100.0 * greater_than_nums.count / array.count
  end
end

require 'rspec'

describe Probability do
  describe '.prob_greater_or_equal' do
    context 'when percentage of probability is present' do
      let!(:array) { [5, 1, 8, 9] }

      it 'returns the probability as a percentage' do
        expect(Probability.prob_greater_or_equal(array, 6)).to eq(50.0)
      end
    end
  end
end