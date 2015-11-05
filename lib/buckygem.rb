require "buckygem/version"

module Buckygem
  # Image Metadata Stuff
  autoload :ImagesCollection, 'buckygem/images_collection'
  autoload :ImageMetadata, 'buckygem/image_metadata'
  autoload :ImageFolderConverter, 'buckygem/image_folder_converter'

  # Liquid Stuff
  autoload :I18nDateFilter, 'buckygem/i18n_date_filter'
  autoload :LiquidUtilsExt, 'buckygem/liquid_utils_ext'
  
  # Marketing Stuff
  autoload :GoogleAnalyticsLinkBuilder, 'buckygem/google_analytics_link_builder'
  autoload :ItunesConnectLinkBuilder, 'buckygem/itunes_connect_link_builder'
end
