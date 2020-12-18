# frozen_string_literal: true

# coding utf-8

require 'spec_helper'

describe Buckygem do
  describe 'slugify' do
    it 'can slugify any string' do
      expect(Buckygem.slugify("  L'amour de l’apostrophe ")).to eq 'l-amour-de-l-apostrophe'
      expect(Buckygem.slugify('  Encyclopédie du rock  ')).to eq 'encyclopedie-du-rock'
      expect(Buckygem.slugify(' A    b')).to eq 'a-b'
    end
  end
end
