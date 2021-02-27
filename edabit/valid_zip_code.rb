module ZipCodeValidator
  def self.validate(zip_code)
    zip_code.to_i.to_s.length == 5
  end
end

require 'rspec'

describe ZipCodeValidator do
  describe '.validate' do
    context 'when given a correct string for 5 digit zip code' do
      it 'returns true' do
        expect(ZipCodeValidator.validate('59001')).to eq(true)
      end
    end

    context 'when given a string for zip code with letters' do
      it 'returns false' do
        expect(ZipCodeValidator.validate('599a0')).to eq(false)
      end
    end

    context 'when given a string for zip code with spaces' do
      it 'returns false' do
        expect(ZipCodeValidator.validate('732 32')).to eq(false)
      end
    end

    context 'when given a string for zip code that is not 5 digits long' do
      it 'returns false' do
        expect(ZipCodeValidator.validate('599')).to eq(false)
      end
    end
  end
end