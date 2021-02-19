module ScoreCalculator
  def self.score(dice_rolls)
    score = 0

    dice_rolls.each do |roll1, roll2|
      if roll1 == roll2
        return 0
      else
        score += (roll1 + roll2)
      end
    end

    score
  end
end

require 'rspec'

describe ScoreCalculator do
  describe '.score' do
    context 'when there are no doubles' do
      let!(:dice_rolls) { [[1, 2], [3, 4], [5, 6]] }

      it 'returns a non-zero score' do
        expect(ScoreCalculator.score(dice_rolls)).to eq(21)
      end
    end

    context 'when there is a double' do
      let!(:dice_rolls) { [[1, 1], [3, 4], [5, 6]] }

      it 'returns a zero score' do
        expect(ScoreCalculator.score(dice_rolls)).to eq(0)
      end
    end
  end
end