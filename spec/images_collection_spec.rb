require 'spec_helper'

all_images_in_test_dir = ['boot.jpeg', 'boot.jpg', 'boot.png', 'boot.tiff', 'boot.bmp', 'boot.gif', 'boot.PNG', 'boot space.png']

describe Buckygem::ImagesCollection do
  describe '#initialize' do
    it "gets initialized with a working directory" do
      expect(Buckygem::ImagesCollection.new("test").root_dir).to eq(File.absolute_path("test")) 
    end
    
    it "does not get initialized with a non existing directory" do
      expect { Buckygem::ImagesCollection.new("does_not_exist") }.to raise_error("Invalid root directory")
    end
    
    it "parses directories knowing what is an image and what is not" do
      image_collection = Buckygem::ImagesCollection.new("test")
      expect(image_collection.images.count).to eq all_images_in_test_dir.count
      image_collection.images.each do |image|
        expect(File.file? image).to be true
        expect(image).to eq File.absolute_path(image)
      end
    end
    
    it "knows what are image names and what's not" do
      name_list_ok = [ 'toto.png', 'toto.jpg', 'toto.jpeg', 'toto.gif', 'toto.tiff', 'toto.bmp', 'toto space.png']
      name_list_ko = [ '.png', 'toto.txt', '.', '..', 'toto', nil]

      name_list_ok.each do |name|
        expect(Buckygem::ImagesCollection.is_image_name? name).to eq true
        expect(Buckygem::ImagesCollection.is_image_name? name.upcase).to eq true
        expect(Buckygem::ImagesCollection.is_image_name? name.capitalize).to eq true
      end

      name_list_ko.each do |name|
        expect(Buckygem::ImagesCollection.is_image_name? name).to eq false
      end
    end
  end
end