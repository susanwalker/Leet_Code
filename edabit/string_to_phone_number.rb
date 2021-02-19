module StringToPhoneNumber
  CONVERT = {
    'a' => '2',
    'b' => '2',
    'c' => '2',
    'd' => '3',
    'e' => '3',
    'f' => '3',
    'g' => '4',
    'h' => '4',
    'i' => '4',
    'j' => '5',
    'k' => '5',
    'l' => '5',
    'm' => '6',
    'n' => '6',
    'o' => '6',
    'p' => '7',
    'q' => '7',
    'r' => '7',
    's' => '7',
    't' => '8',
    'u' => '8',
    'v' => '8',
    'w' => '9',
    'x' => '9',
    'y' => '9',
    'z' => '9'
  }

  def self.convert_string_to_number(string)
    string.downcase.chars.map do |char|
      if CONVERT.keys.include?(char)
        CONVERT[char]
      else
        char
      end
    end.join
  end
end

require 'rspec'

describe 'StringToPhoneNumber' do
  describe '.convert_string_to_number' do
    context 'when given a mixed string of numbers, dashes and letters' do
      let!(:string) { '1-800-HOTLINEbLING' }

      it 'returns a string of all numbers and dashes' do
        expect(StringToPhoneNumber.convert_string_to_number(string)).to eq('1-800-468546325464')
      end
    end
  end
end