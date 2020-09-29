# frozen_string_literal: true

module Buckygem
  # A tag handling {% vimeo foo %}
  # where foo is a Vimeo video id
  class VimeoTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @vimeo_id = text.strip
    end

    def render(_context)
      <<~RENDERED_HTML
        <div class="buckygem-vimeo-tag">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://player.vimeo.com/video/#{@vimeo_id}" allowfullscreen></iframe>
          </div>
        </div>
      RENDERED_HTML
    end
  end
end
