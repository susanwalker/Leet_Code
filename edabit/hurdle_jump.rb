module HurdleJump
  def self.clear_hurdles(hurdles, jump_height)
    return true if hurdles.empty?

    jump_height >= hurdles.max
  end
end

require 'rspec'

describe HurdleJump do
  describe '.clear_hurdles' do
    context 'when jump height is greater than the highest hurdle' do
      let!(:hurdles) { [1, 2, 3, 4, 5] }

      it 'returns true' do
        expect(HurdleJump.clear_hurdles(hurdles, 6)).to eq(true)
      end
    end

    context 'when jump height is equal to the highest hurdle' do
      let!(:hurdles) { [1, 2, 3, 4, 5] }

      it 'returns true' do
        expect(HurdleJump.clear_hurdles(hurdles, 5)).to eq(true)
      end
    end

    context 'when jump height is less than the highest hurdle' do
      let!(:hurdles) { [1, 2, 3, 4, 5] }

      it 'returns false' do
        expect(HurdleJump.clear_hurdles(hurdles, 3)).to eq(false)
      end
    end

    context 'when there are no hurdles' do
      let!(:hurdles) { [] }

      it 'returns true' do
        expect(HurdleJump.clear_hurdles(hurdles, 5)).to eq(true)
      end
    end
  end
end