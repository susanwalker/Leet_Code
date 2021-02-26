module MakeSandwich
  def self.make_a_sandwich(ingredients, flavor)
    index = 0

    loop do
      break if index >= ingredients.length

      ingredient = ingredients[index]

      if ingredient == flavor
        sandwich_once(ingredients, index)
        index += 2
      end

      index += 1
    end

    ingredients
  end

  def self.sandwich_once(ingredients, index)
    ingredients.insert(index + 1, 'bread')
    ingredients.insert(index, 'bread')
  end
end

require 'rspec'

describe MakeSandwich do
  describe '.make_a_sandwich' do
    context 'when given an array of ingredients and a flavor' do
      let!(:ingredients) { %w[tuna ham tomato] }

      it 'returns the array with bread on either side of the flavor' do
        expect(MakeSandwich.make_a_sandwich(ingredients, 'ham')).to eq(%w[tuna bread ham bread tomato])
      end
    end

    context 'when given repeated flavors' do
      let!(:ingredients) { %w[ham ham] }

      it 'returns an array with bread on either side of each flavor' do
        expect(MakeSandwich.make_a_sandwich(ingredients, 'ham')).to eq(%w[bread ham bread bread ham bread])
      end
    end
  end
end