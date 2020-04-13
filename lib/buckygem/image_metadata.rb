# frozen_string_literal: true

require 'mini_magick'

module Buckygem
  class ImageMetadata
    attr_accessor :absolute_path
    attr_accessor :name
    attr_accessor :width
    attr_accessor :height

    def initialize(file_path)
      raise 'Invalid image file' unless File.file?(file_path)

      @absolute_path = File.absolute_path(file_path)
      @name = File.basename(@absolute_path, File.extname(@absolute_path))
      dimensions = MiniMagick::Image.open(@absolute_path).dimensions
      @width = dimensions[0]
      @height = dimensions[1]
    end

    def to_less
      "@#{@name}_width: #{@width}px;\n@#{@name}_height: #{@height}px;"
    end
  end
end
