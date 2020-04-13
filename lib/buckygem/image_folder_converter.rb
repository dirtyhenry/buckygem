# frozen_string_literal: true

require 'mini_magick'

module Buckygem
  # Utility to preocess images in bulks.
  class ImageFolderConverter
    def convert(source_dir, target_dir, convert_args)
      collection = Buckygem::ImagesCollection.new(source_dir)
      collection.images.each do |source_image|
        target_image = source_image.gsub(source_dir, target_dir)
        target_image_dirname = File.dirname target_image
        FileUtils.mkdir_p(target_image_dirname)
        return_value = `convert "#{source_image}" #{convert_args} "#{target_image}"`
        raise return_value unless $CHILD_STATUS.exitstatus.zero?
      end
      true
    end
  end
end
