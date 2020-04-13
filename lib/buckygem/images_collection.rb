# frozen_string_literal: true

require 'find'

module Buckygem
  class ImagesCollection
    attr_accessor :root_dir
    attr_accessor :images_cache

    def initialize(root_dir)
      raise 'Invalid root directory' unless File.directory? root_dir

      @root_dir = File.absolute_path(root_dir)
    end

    def images
      return @images_cache if @images_cache

      @images_cache = []
      Find.find(@root_dir) do |item|
        next if (item == '.') || (item == '..')

        if ImagesCollection.is_image_name? item
          @images_cache << File.absolute_path(item)
        end
      end

      @images_cache
    end

    def self.is_image_name?(filename)
      return false if filename.nil?

      basename_with_ext = File.basename(filename)
      extname = File.extname(basename_with_ext)
      basename = File.basename(basename_with_ext, extname)

      !basename.empty? && ['.bmp', '.gif', '.jpg', '.jpeg', '.tiff', '.png'].include?(extname.downcase)
    end
  end
end
