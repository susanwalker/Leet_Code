module FizzBuzzTest
  def self.fizz_buzz(num)
    (1..num).map do |n|
      muliples(n)
    end
  end

  def self.muliples(num)
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 3 == 0
      'Fizz'
    elsif num % 5 == 0
      'Buzz'
    else
      num
    end
  end
end

require 'rspec'

describe FizzBuzzTest do
  describe '.fizz_buzz' do
    context 'when given a number' do
      it 'returns count from 1 to that number' do
        expect(FizzBuzzTest.fizz_buzz(2)).to eq([1, 2])
      end
    end

    context 'when num is multiple of 3' do
      it 'returns "Fizz"' do
        expect(FizzBuzzTest.fizz_buzz(3)).to eq([1, 2, 'Fizz'])
      end
    end

    context 'when num is multiple of 5' do
      it 'returns "Buzz"' do
        expect(FizzBuzzTest.fizz_buzz(5)).to eq([1, 2, 'Fizz', 4, 'Buzz'])
      end
    end

    context 'when num is multiple of 3 and 5' do
      it 'returns "FizzBuzz"' do
        expect(FizzBuzzTest.fizz_buzz(15)).to eq(
          [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz']
        )
      end
    end
  end
end