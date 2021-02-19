module Lexicographical
  def self.first_and_last(word)
    first_word = word.chars.sort.join
    last_word = first_word.reverse

    [first_word, last_word]
  end
end

require 'rspec'

describe Lexicographical do
  describe '.first_and_last' do
    context 'when given a word' do
      let!(:word) { 'marmite' }

      it 'returns first and last rearrangements' do
        expect(Lexicographical.first_and_last(word)).to eq(%w[aeimmrt trmmiea])
      end
    end
  end
end