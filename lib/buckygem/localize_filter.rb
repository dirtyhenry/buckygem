# frozen_string_literal: true

require 'liquid'
require 'i18n'

module Buckygem
  # A Liquid filter to translate keys.
  # Currently supporting English and French.
  module LocalizeFilter
    def translate(input, locale = 'en')
      I18n.load_path = Dir['config/locales/*.yml']
      I18n.locale = locale
      I18n.t input
    end
  end
end
