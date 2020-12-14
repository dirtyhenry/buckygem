# frozen_string_literal: true
# coding utf-8

require 'i18n'
require 'liquid'

module Buckygem
  # Returns a slug from a string.
  def self.slugify(string)
    I18n.available_locales = %i[en fr]
    I18n.transliterate(string)
        .downcase
        .strip
        .gsub(/[^\w-]+/, '-')
  end
end
