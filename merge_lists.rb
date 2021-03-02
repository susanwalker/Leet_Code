module MergeLists
  def self.merger(list1, list2)
    (list1 + list2).sort
  end
end

require 'rspec'

describe MergeLists do
  describe '.merger' do
    context 'when given two sorted lists' do
      it 'returns one merged and sorted list' do
        expect(MergeLists.merger([1, 2, 4], [1, 3, 4])).to eq([1, 1, 2, 3, 4, 4])
      end
    end
  end
end