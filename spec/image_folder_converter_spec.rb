require 'spec_helper'

describe Buckygem::ImageFolderConverter do
  describe '#convert' do
    it "knows how to scale" do
      image_folder_converter = Buckygem::ImageFolderConverter.new
      success = image_folder_converter.convert('test', 'test-tmp', '-scale 200%')
      expect(success).to eq true
      
      # All images were copied
      image_collection_source = Buckygem::ImagesCollection.new("test")
      image_collection_target = Buckygem::ImagesCollection.new("test-tmp")
      expect(image_collection_target.images.count).to eq (image_collection_source.images.count)
      
      # The size was doubled
      image_metadata = Buckygem::ImageMetadata.new("test-tmp/images/boot.png")
      expect(image_metadata.width).to eq (32 * 2)
      expect(image_metadata.height).to eq (24 * 2)
      
      FileUtils::rm_rf("test-tmp", secure: true)          
    end
  end
end