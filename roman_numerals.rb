module RomanNumerals
  def self.roman_numeral_to_number_converter(roman_numeral)
    number = 0

    if roman_numeral == 'IV'
      number += 4
    elsif roman_numeral == 'IX'
      number += 9
    elsif roman_numeral == 'XL'
      number += 40
    elsif roman_numeral == 'XC'
      number += 90
    elsif roman_numeral == 'CD'
      number += 400
    elsif roman_numeral == 'CM'
      number += 900
    else
      roman_numeral.chars.each do |char|
        if char == 'I'
          number += 1
        elsif char == 'V'
          number += 5
        elsif char == 'X'
          number += 10
        elsif char == 'L'
          number += 50
        elsif char == 'C'
          number += 100
        elsif char == 'D'
          number += 500
        elsif char == 'M'
          number += 1000
        end
      end
    end

    number
  end
end

require 'rspec/autorun'

describe RomanNumerals do
  describe '.roman_numeral_to_number_converter' do
    context 'when given a roman numeral that is added together' do
      let!(:roman_numeral) { 'III' }

      it 'converts to number by adding together' do
        expect(RomanNumerals.roman_numeral_to_number_converter(roman_numeral)).to eq(3)
      end
    end

    context 'when given a roman numeral that is an exception case' do
      let!(:roman_numeral) { 'IV' }

      it 'converts to number by using one of the exceptions' do
        expect(RomanNumerals.roman_numeral_to_number_converter(roman_numeral)).to eq(4)
      end
    end
  end
end