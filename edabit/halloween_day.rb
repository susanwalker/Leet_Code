module HaloweenDay
  def self.halloween_day_message(date)
    message = ''

    message << if date.include?('10/31')
                 'bonfire toffee'
               else
                 'toffee'
               end
  end
end

require 'rspec/autorun'

describe HaloweenDay do
  describe '.halloween_day_message' do
    context 'when given a date that is not Halloween' do
      let!(:date) { '2014/10/30' }

      it 'gives the message toffee' do
        expect(HaloweenDay.halloween_day_message(date)).to eq('toffee')
      end
    end

    context 'when given a date that is Halloween' do
      let!(:date) { '2014/10/31' }

      it 'gives the message toffee' do
        expect(HaloweenDay.halloween_day_message(date)).to eq('bonfire toffee')
      end
    end
  end
end