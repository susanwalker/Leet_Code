module WashYourHands
  def self.time_washing(n, nm)
    total_seconds = (((n * 21) * 30) * nm)
    minutes = total_seconds / 60
    seconds = total_seconds % 60

    "#{minutes} minutes and #{seconds} seconds"
  end
end

require 'rspec/autorun'

describe WashYourHands do
  describe '.time_washing' do
    context 'when someone washes 8 times a day for 8 months' do
      let!(:n) { 8 }
      let!(:nm) { 7 }

      it 'gives the number of seconds total spent washing' do
        expect(WashYourHands.time_washing(8, 7)).to eq('588 minutes and 0 seconds')
      end
    end

    context 'when someone washes 0 times a day for 0 months' do
      let!(:n) { 0 }
      let!(:nm) { 0 }

      it 'gives the number of seconds total spent washing' do
        expect(WashYourHands.time_washing(0, 0)).to eq('0 minutes and 0 seconds')
      end
    end

    context 'when someone washes 7 times a day for 9 months' do
      let!(:n) { 7 }
      let!(:nm) { 9 }

      it 'gives the number of seconds total spent washing' do
        expect(WashYourHands.time_washing(7, 9)).to eq('661 minutes and 30 seconds')
      end
    end
  end
end