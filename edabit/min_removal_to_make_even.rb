module MinRemovalToMakeEven
  def self.make_even(array)
    sum = 0

    array.each do |num|
      sum += num
    end

    return 0 if sum.even?

    1
  end
end

require 'rspec'

describe MinRemovalToMakeEven do
  describe '.make_even' do
    context 'when an array is even' do
      let!(:array) { [1, 2, 3, 4, 4] }

      it 'returns 0' do
        expect(MinRemovalToMakeEven.make_even(array)).to eq(0)
      end
    end

    context 'when an array is odd' do
      let!(:array) { [1, 2, 3, 4, 5] }

      it 'returns 1' do
        expect(MinRemovalToMakeEven.make_even(array)).to eq(1)
      end
    end
  end
end