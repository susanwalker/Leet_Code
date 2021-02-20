module ArrayOfMultiples
  def self.multiples(num, length)
    (1..length).map do |i|
      num * i
    end
  end
end

require 'rspec'

describe ArrayOfMultiples do
  describe '.multiples' do
    context 'when given a num and length' do
      it 'returns an array of that nums multiples as long as the length' do
        expect(ArrayOfMultiples.multiples(7, 5)).to eq([7, 14, 21, 28, 35])
      end
    end
  end
end
