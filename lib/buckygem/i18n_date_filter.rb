# Liquid filter to provide a way to output an internationalized date

require 'liquid'
require 'i18n'

module Buckygem
  module I18nDateFilter
    def i18n_date(input, format = :short, locale = 'en')
      input_as_date = Buckygem::LiquidUtilsExt::to_date input
      I18n.load_path = Dir['config/locales/*.yml']
      I18n.locale = locale
      if format == 'default'  
        format_as_symbol = :default_date
      else
        format_as_symbol = format
      end
      I18n.l input_as_date, format: format_as_symbol
    end
  end
end

Liquid::Template.register_filter(Buckygem::I18nDateFilter)
