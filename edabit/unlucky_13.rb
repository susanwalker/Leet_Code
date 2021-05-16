module Unlucky13
  def self.remove_13(arr)
    arr.reject { |num| (num % 13).zero? }
  end
end

require 'rspec/autorun'

describe Unlucky13 do
  describe '.remove_13' do
    context 'when given an array that contains a num divisible by 13' do
      let!(:arr) { [53, 182, 435, 591, 637] }

      it 'returns an array with the num divisible by 13 removed' do
        expect(Unlucky13.remove_13(arr)).to eq([53, 435, 591])
      end
    end

    context 'when given an array that does not contain a num divisible by 13' do
      let!(:arr) { [24, 316, 393, 458, 1279] }

      it 'returns the array' do
        expect(Unlucky13.remove_13(arr)).to eq([24, 316, 393, 458, 1279])
      end
    end
  end
end