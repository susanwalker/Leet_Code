module DistributeCandies
  # Alice is on a diet and is eating n / 2 number of candies.
  # She wants to eat one of each type, given n / 2 total she can eat.
  def self.candies(candy_types)
    diet = candy_types.count / 2
    different_candies = candy_types.uniq.count
    if diet >= different_candies
      different_candies
    elsif diet < different_candies
      diet
    end
  end
end

require 'rspec'

describe DistributeCandies do
  describe '.candies' do
    context 'when given multiple different candy types' do
      let!(:candy_types) { [1, 1, 2, 2, 3, 3] }

      it 'gives the maximum number of different candies than be eaten' do
        expect(DistributeCandies.candies(candy_types)).to eq(3)
      end
    end

    context 'when given multiple different candy types where the number of types != n / 2' do
      let!(:candy_types) { [1, 1, 2, 3] }

      it 'gives the maximum number of different candies than be eaten' do
        expect(DistributeCandies.candies(candy_types)).to eq(2)
      end
    end

    context 'when given an array of the same candy type' do
      let!(:candy_types) { [6, 6, 6, 6] }

      it 'gives the maximum number of different candies than be eaten' do
        expect(DistributeCandies.candies(candy_types)).to eq(1)
      end
    end
  end
end