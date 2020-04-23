# frozen_string_literal: true

require 'spec_helper'

describe Buckygem::LocalizeFilter do
  describe '#translate' do
    it 'can output a key in English' do
      template = Liquid::Template.parse("Next in English is {{ 'common.next' | translate }}")
      expect(template.render).to eq 'Next in English is next'
    end

    it 'can output a key in French' do
      template = Liquid::Template.parse("Next in English is {{ 'common.next' | translate: 'fr' }}")
      expect(template.render).to eq 'Next in English is suivant'
    end
  end
end
