require 'spec_helper'

describe Buckygem::ImageMetadata do
  describe '#initialize' do
    it "gets initialized with a working image" do
      metadata = Buckygem::ImageMetadata.new("test/images/boot.png")
      expect(metadata).to be_truthy
    end
    
    it "does not get initialized with a non existing directory" do
      expect { Buckygem::ImageMetadata.new("does_not_exist") }.to raise_error("Invalid image file")
    end
    
    it "does get initialized with a filename containing a space" do
      expect { Buckygem::ImageMetadata.new("test/images/subdir/boot space.png") }.not_to raise_error
    end

    it "knows dimension of images" do
      image_metadata = Buckygem::ImageMetadata.new("test/images/boot.png")
      expect(image_metadata.name).to eq "boot"
      expect(image_metadata.absolute_path).to eq File.absolute_path("test/images/boot.png")
      expect(image_metadata.width).to eq 32
      expect(image_metadata.height).to eq 24   
    end
    
    it "exports to less" do
      image_metadata = Buckygem::ImageMetadata.new("test/images/boot.png")
      expect(image_metadata.to_less).to eq "@boot_width: 32px;\n@boot_height: 24px;"
    end
  end
end