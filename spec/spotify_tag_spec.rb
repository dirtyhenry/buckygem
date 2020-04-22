# frozen_string_literal: true

require 'spec_helper'

describe Buckygem::SpotifyTag do
  describe '#tag' do
    it 'can output a date in english' do
      expected_output = <<~EXPECTED_OUTPUT
        <div>
          <a class="button" href="http://open.spotify.com/user/author/playlist/1234">
            écouter sur Spotify
          </a>
        </div>
      EXPECTED_OUTPUT

      template = Liquid::Template.parse('{% spotify 1234 author %}')
      expect(template.render).to eq expected_output
    end
  end
end
