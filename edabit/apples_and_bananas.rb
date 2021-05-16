class String
  def vreplace(vowel)
    gsub(/[aeiou]/, vowel)
  end
end

require 'rspec/autorun'

describe String do
  describe '.vreplace' do
    context 'when given the vowel "u"' do
      let!(:vowel) { 'u' }

      it 'replaces all vowels with the letter "u"' do
        expect('apples and bananas'.vreplace('u')).to eq('upplus und bununus')
      end
    end

    context 'when given the vowel "o"' do
      let!(:vowel) { 'o' }

      it 'replaces all vowels with the letter "u"' do
        expect('cheese casserole'.vreplace('o')).to eq('chooso cossorolo')
      end
    end

    context 'when given the vowel "e"' do
      let!(:vowel) { 'e' }

      it 'replaces all vowels with the letter "u"' do
        expect('stuffed jalapeno poppers'.vreplace('e')).to eq('steffed jelepene peppers')
      end
    end
  end
end