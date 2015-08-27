require 'mini_magick'

module Buckygem
  class ImageFolderConverter
    def convert(source_dir, target_dir, convert_args)
      collection = Buckygem::ImagesCollection.new(source_dir)
      collection.images.each do |source_image|
        target_image = source_image.gsub(source_dir, target_dir)
        target_image_dirname = File.dirname target_image
        FileUtils::mkdir_p(target_image_dirname) unless File.exist?(target_image_dirname)
        return_value = `convert "#{source_image}" #{convert_args} "#{target_image}"` 
        raise return_value unless $?.exitstatus == 0
      end
      return true
    end
  end
end