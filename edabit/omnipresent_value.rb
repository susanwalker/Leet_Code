module Omnipresent
  def self.omni(arrays, num)
    arrays.all? do |array|
      array.include?(num)
    end
  end
end

require 'rspec'

describe Omnipresent do
  describe '.omni' do
    context 'when num is present in all arrays' do
      let!(:arrays) { [[3, 4], [8, 3, 2], [3], [9, 3], [5, 3], [4, 3]] }

      it 'returns true' do
        expect(Omnipresent.omni(arrays, 3)).to eq(true)
      end
    end

    context 'when num is not present in all arrays' do
      let!(:arrays) { [[3, 4], [8, 2], [3], [9, 3], [5, 3], [4, 3]] }

      it 'returns false' do
        expect(Omnipresent.omni(arrays, 3)).to eq(false)
      end
    end
  end
end