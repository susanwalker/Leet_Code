module GiveMeEvens
  def self.num_range(start, stop)
    arr = []
    sum = 0

    (start..stop).each do |num|
      if num.even?
        arr << num
      else
        next
      end
    end

    arr.each do |n|
      sum += n
    end

    sum
  end
end

require 'rspec'

describe GiveMeEvens do
  describe '.num_range' do
    context 'when given two nums' do
      it 'gives a sum of even numbers between those two nums' do
        expect(GiveMeEvens.num_range(10, 20)).to eq(90)
      end
    end
  end
end