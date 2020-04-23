# frozen_string_literal: true

require 'buckygem/version'
require 'liquid'

# Buckygem is a collection of Ruby utilities, especially useful
# to run advanced Jekyll websites.
module Buckygem
  autoload :CSVUtils, 'buckygem/csv_utils'
  autoload :I18nDateFilter, 'buckygem/i18n_date_filter'
  autoload :ImageFolderConverter, 'buckygem/image_folder_converter'
  autoload :ImageMetadata, 'buckygem/image_metadata'
  autoload :ImagesCollection, 'buckygem/images_collection'
  autoload :LocalizeFilter, 'buckygem/localize_filter'
  autoload :SpotifyTag, 'buckygem/spotify_tag'
  autoload :YouTubeTag, 'buckygem/youtube_tag'
end

Liquid::Template.register_filter(Buckygem::I18nDateFilter)
Liquid::Template.register_filter(Buckygem::LocalizeFilter)

Liquid::Template.register_tag('spotify', Buckygem::SpotifyTag)
Liquid::Template.register_tag('youtube', Buckygem::YouTubeTag)
