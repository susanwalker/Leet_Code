module RockPaperScissors
  PLAYER1 = 'Abigail'.freeze
  PLAYER2 = 'Benson'.freeze
  TIE = 'Tie'.freeze

  def self.game(plays)
    turn_winners = plays.map do |turn|
      winner(turn)
    end

    player1_count = turn_winners.count(PLAYER1)
    player2_count = turn_winners.count(PLAYER2)

    if player1_count > player2_count
      PLAYER1
    elsif player2_count > player1_count
      PLAYER2
    else
      TIE
    end
  end

  def self.winner(turn)
    case turn
    when %w[R P] then PLAYER2
    when %w[P R] then PLAYER1
    when %w[R S] then PLAYER1
    when %w[S R] then PLAYER2
    when %w[S P] then PLAYER1
    when %w[P S] then PLAYER2
    when %w[P P] then TIE
    when %w[R R] then TIE
    when %w[S S] then TIE
    end
  end
end

require 'rspec'

describe RockPaperScissors do
  describe '.game' do
    context 'when player_1 makes moves that beat player_2 in the majority of plays' do
      let!(:plays) { [%w[R P], %w[R S], %w[S P]] }

      it 'returns that player_1 has won the game' do
        expect(RockPaperScissors.game(plays)).to eq('Abigail')
      end
    end

    context 'when player_2 makes moves that beat player_1 in the majority of plays' do
      let!(:plays) { [%w[R P], %w[S R], %w[S P]] }

      it 'returns that player_2 has won the game' do
        expect(RockPaperScissors.game(plays)).to eq('Benson')
      end
    end

    context 'when there is no majority of wins' do
      let!(:plays) { [%w[S R], %w[R S], %w[R R]] }

      it 'returns that the game is a tie' do
        expect(RockPaperScissors.game(plays)).to eq('Tie')
      end
    end
  end
end