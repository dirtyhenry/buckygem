# frozen_string_literal: true

require 'spec_helper'

describe Buckygem::I18nDateFilter do
  describe '#i18n_date' do
    it 'can output a date in english' do
      template = Liquid::Template.parse("Today is {{ my_date | i18n_date: '%B %d, %Y', 'en' }}")
      expect(template.render('my_date' => '2015-06-20 10:00:00'))
        .to eq 'Today is June 20, 2015'
    end

    it 'can output a date in french' do
      template = Liquid::Template.parse(
        "Aujourd'hui, on est le {{ my_date | i18n_date: '%B %d, %Y', 'fr' }}"
      )
      expect(template.render('my_date' => '2015-06-20 10:00:00'))
        .to eq 'Aujourd\'hui, on est le juin 20, 2015'
    end

    it 'can output a :short date in english' do
      template = Liquid::Template.parse("{{ my_date | i18n_date: 'default', 'en' }}")
      expect(template.render('my_date' => '2015-06-20 10:00:00'))
        .to eq 'June 20, 2015'
    end

    it 'can output a :short date in french' do
      template = Liquid::Template.parse("{{ my_date | i18n_date: 'default', 'fr' }}")
      expect(template.render('my_date' => '2015-06-20 10:00:00'))
        .to eq '20 juin 2015'
    end
  end
end
