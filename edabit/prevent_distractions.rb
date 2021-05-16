module PreventDistractions
  def self.distraction_check(message)
    check = []
    check << if message.split.any? { |i| %w[anime meme vines roasts Danny DeVito].include?(i) }
               'NO!'
             else
               'Safe watching!'
             end
  end
end

require 'rspec/autorun'

describe PreventDistractions do
  describe '.distraction_check' do
    context 'when message includes on of the keywords vines' do
      let!(:message) { 'vines that butter my eggroll' }

      it 'returns the message "No!"' do
        expect(PreventDistractions.distraction_check(message)).to eq(['NO!'])
      end
    end

    context 'when message includes one of the keywords Danny Devito' do
      let!(:message) { 'Hot pictures of Danny DeVito' }

      it 'returns the message "No!"' do
        expect(PreventDistractions.distraction_check(message)).to eq(['NO!'])
      end
    end

    context 'when message does not include one of the keywords' do
      let!(:message) { 'How to ace BC Calculus in 5 Easy Steps' }

      it 'returns the message "No!"' do
        expect(PreventDistractions.distraction_check(message))
          .to eq(['Safe watching!'])
      end
    end
  end
end