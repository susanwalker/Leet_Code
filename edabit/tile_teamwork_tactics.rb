module TileTeamwork
  def self.possible_bonus(my_num, friend_num)
    friend_num - my_num <= 6 && (friend_num - my_num).positive?
  end
end

require 'rspec'

describe TileTeamwork do
  describe '.possible_bonus' do
    context 'when my_num is 6 or less spaces behind' do
      it 'returns true for possibility of landing on the same space' do
        expect(TileTeamwork.possible_bonus(3, 7)).to eq(true)
      end
    end

    context 'when my_num is greater than 6 spaces behind' do
      it 'returns false for possibility of landing on the same space' do
        expect(TileTeamwork.possible_bonus(1, 9)).to eq(false)
      end
    end

    context 'when my_num is ahead of friend_num' do
      it 'returns false for possibility of landing on the same space' do
        expect(TileTeamwork.possible_bonus(5, 3)).to eq(false)
      end
    end
  end
end