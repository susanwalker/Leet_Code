module RansomNote
  def self.make_ransom_note(note_letters, magazine_letters)
    magazine_letters.include?(note_letters)
  end
end

require 'rspec'

describe RansomNote do
  describe '.make_ransom_note' do
    context 'when given letters for a ransom note and magazine letters' do
      it 'return true if possible to make the ransom note from the magazine letters' do
        expect(RansomNote.make_ransom_note('aa', 'aab')).to eq(true)
      end
    end

    context 'when given letters for a ransom note and magazine letters' do
      it 'return false if not possible to make the ransom note from the magazine letters' do
        expect(RansomNote.make_ransom_note('aa', 'ab')).to eq(false)
      end
    end
  end
end