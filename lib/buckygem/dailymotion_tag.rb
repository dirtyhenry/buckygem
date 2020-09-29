# frozen_string_literal: true

module Buckygem
  # A tag handling {% dailymotion foo %}
  # where foo is a Dailymotion video id
  class DailymotionTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @dailymotion_id = text.strip
    end

    def render(_context)
      <<~RENDERED_HTML
        <div class="buckygem-dailymotion-tag">
          <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.dailymotion.com/embed/video/#{@dailymotion_id}" allowfullscreen></iframe>
          </div>
        </div>
      RENDERED_HTML
    end
  end
end
