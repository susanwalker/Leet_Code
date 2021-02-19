module OnlyIntegers
  def self.give_me_integers(array)
    new_arr = []
    array.each do |i|
      if i.is_a?(Integer)
        new_arr << i
      else
        next
      end
    end

    new_arr
  end
end

require 'rspec'

describe OnlyIntegers do
  describe '.give_me_integers' do
    context 'when given an array' do
      let!(:array) { [9, 2, 'space', 'car', 'lion', 0] }

      it 'returns an array of only integers' do
        expect(OnlyIntegers.give_me_integers(array)).to eq([9, 2, 0])
      end
    end
  end
end
