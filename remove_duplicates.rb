module RemoveDuplicates
  def self.remove_dups(array)
    final_array = []
    array.each do |num|
      final_array << num unless final_array.include?(num)
    end
    final_array
  end
end

require 'rspec'

describe RemoveDuplicates do
  describe '.remove_dups' do
    context 'when an array consists of numbers with some duplicates' do
      let!(:array) { [1, 1, 2, 3, 3] }

      it 'removes the duplicates' do
        expect(RemoveDuplicates.remove_dups(array)).to eq([1, 2, 3])
      end
    end
  end
end