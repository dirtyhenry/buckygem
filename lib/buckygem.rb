# frozen_string_literal: true

require 'buckygem/slugify'
require 'buckygem/version'
require 'buckygem/category_page_generator'
require 'liquid'

# Buckygem is a collection of Ruby utilities, especially useful
# to run advanced Jekyll websites.
module Buckygem
  # File Utils
  autoload :CSVUtils, 'buckygem/csv_utils'
  autoload :ImageFolderConverter, 'buckygem/image_folder_converter'
  autoload :ImageMetadata, 'buckygem/image_metadata'
  autoload :ImagesCollection, 'buckygem/images_collection'

  # Liquid Tags & Filters
  autoload :DailymotionTag, 'buckygem/dailymotion_tag'
  autoload :I18nDateFilter, 'buckygem/i18n_date_filter'
  autoload :LocalizeFilter, 'buckygem/localize_filter'
  autoload :VimeoTag, 'buckygem/vimeo_tag'
  autoload :YouTubeTag, 'buckygem/youtube_tag'
  autoload :CategoryLinkFilter, 'buckygem/category_page_generator'
  autoload :TagLinkFilter, 'buckygem/tag_page_generator'
end

Liquid::Template.register_filter(Buckygem::CategoryLinkFilter)
Liquid::Template.register_filter(Buckygem::I18nDateFilter)
Liquid::Template.register_filter(Buckygem::LocalizeFilter)
Liquid::Template.register_filter(Buckygem::TagLinkFilter)

Liquid::Template.register_tag('dailymotion', Buckygem::DailymotionTag)
Liquid::Template.register_tag('vimeo', Buckygem::VimeoTag)
Liquid::Template.register_tag('youtube', Buckygem::YouTubeTag)
