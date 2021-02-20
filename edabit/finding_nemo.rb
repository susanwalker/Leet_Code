module FindingNemo
  def self.nemo(string)
    array = string.split(' ')
    if array.include?('Nemo')
      "I found Nemo at #{array.index('Nemo') + 1}!"
    else
      "I can\'t find Nemo :("
    end
  end
end

require 'rspec'

describe FindingNemo do
  describe '.nemo' do
    context 'when given a string that has the word Nemo' do
      let!(:string) { 'I am finding Nemo !' }

      it 'returns "I found Nemo at (position)"!' do
        expect(FindingNemo.nemo(string)).to eq('I found Nemo at 4!')
      end
    end

    context 'when given a string that does not have Nemo' do
      let!(:string) { 'I am finding Nemos !' }

      it 'returns "I can\'t find Nemo :("' do
        expect(FindingNemo.nemo(string)).to eq('I can\'t find Nemo :(')
      end
    end
  end
end