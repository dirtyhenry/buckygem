# frozen_string_literal: true

require 'spec_helper'

describe Buckygem::YouTubeTag do
  describe '#tag' do
    it 'can output a date in english' do
      expected_output = <<~EXPECTED_OUTPUT
        <div class="buckygem-vimeo-tag">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://player.vimeo.com/video/videoid" allowfullscreen></iframe>
          </div>
        </div>
      EXPECTED_OUTPUT

      template = Liquid::Template.parse('{% vimeo videoid %}')
      expect(template.render).to eq expected_output
    end
  end
end
