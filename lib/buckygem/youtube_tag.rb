# frozen_string_literal: true

module Buckygem
  # A tag handling {% youtube foo %}
  # where foo is a YouTube video id
  class YouTubeTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @youtube_id = text.strip
    end

    def render(_context)
      <<~RENDERED_HTML
        <div class="embed-responsive embed-responsive-16by9">
          <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/#{@youtube_id}?rel=0" allowfullscreen></iframe>
        </div>
      RENDERED_HTML
    end
  end
end
