module MarathonCalculator
  def self.calculate(portions)
    miles = 0

    portions.each do |portion|
      miles += portion.abs
    end

    miles == 25
  end
end

require 'rspec'

describe MarathonCalculator do
  describe '.calculate' do
    context 'when sum is not 25' do
      let!(:portions) { [1, 2, 3, 4] }

      it 'returns false' do
        expect(MarathonCalculator.calculate(portions)).to eq(false)
      end
    end

    context 'when sum is 25' do
      let!(:portions) { [1, 9, 5, 8, 2] }

      it 'returns true' do
        expect(MarathonCalculator.calculate(portions)).to eq(true)
      end
    end

    context 'when portions has negative number and sums to 25' do
      let!(:portions) { [1, -9, 5, 8, 2] }

      it 'takes absolute value and returns true' do
        expect(MarathonCalculator.calculate(portions)).to eq(true)
      end
    end
  end
end