module CricketBallsToOvers
  def self.how_many_overs(balls)
    overs = balls / 6

    balls_bowled = balls % 6
    if balls_bowled.zero?
      overs.to_s
    else
      "#{overs}.#{balls_bowled}"
    end
  end
end

require 'rspec'

describe CricketBallsToOvers do
  describe '.how_many_overs' do
    context 'when given the number of balls bowled' do
      it 'returns the number of overs' do
        expect(CricketBallsToOvers.how_many_overs(2400)).to eq('400')
      end
    end

    context 'when given the number of balls bowled' do
      it 'returns the number of overs and additional balls as a float' do
        expect(CricketBallsToOvers.how_many_overs(164)).to eq('27.2')
      end
    end

    context 'when less than an over is bowled' do
      it 'returns the value of 0.5 overs' do
        expect(CricketBallsToOvers.how_many_overs(5)).to eq('0.5')
      end
    end
  end
end