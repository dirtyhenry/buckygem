# frozen_string_literal: true

require 'buckygem/version'

# Buckygem is a collection of Ruby utilities, especially useful
# to run advanced Jekyll websites.
module Buckygem
  autoload :ImagesCollection, 'buckygem/images_collection'
  autoload :ImageMetadata, 'buckygem/image_metadata'
  autoload :ImageFolderConverter, 'buckygem/image_folder_converter'
  autoload :I18nDateFilter, 'buckygem/i18n_date_filter'
  autoload :CSVUtils, 'buckygem/csv_utils'
end
