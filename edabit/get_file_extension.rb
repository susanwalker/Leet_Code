module GetFileExtension
  def self.file_extensions(filenames)
    filenames.map do |filename|
      filename_components = filename.split('.')
      if filename_components.length == 1
        nil
      else
        filename_components.last
      end
    end
  end
end

require 'rspec'

describe GetFileExtension do
  describe '.file_extensions' do
    context 'when given a list of files and extentions' do
      let!(:array) { ['code.html', 'code.css', 'name.tar.gz', 'name'] }

      it 'returns only a list of the file extensions' do
        expect(GetFileExtension.file_extensions(array)).to eq(['html', 'css', 'gz', nil])
      end
    end
  end
end