module ApplyingDiscounts
  def self.discounts(arr, discount_num)
    arr.map do |num|
      num * (discount_num.to_i / 100.0)
    end
  end
end

require 'rspec'

describe ApplyingDiscounts do
  describe '.discounts' do
    context 'when given an array and percentage of discount' do
      let!(:array) { [2, 4, 6, 11] }

      it 'returns an array with the discount removed from each num' do
        expect(ApplyingDiscounts.discounts(array, '50%')).to eq([1, 2, 3, 5.5])
      end
    end
  end
end