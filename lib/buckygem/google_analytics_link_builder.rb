require 'active_support'

module Buckygem
  class GoogleAnalyticsLinkBuilder
    def campaign_url(url, source, medium, campaign_name)
      uri = URI.parse(url)
      # Get the query
      { toto: 'tata' }.to_query
      query = URI.decode_www_form(uri.query || '')
      # and append the new stuff
      query << [ 'utm_source', ERB::Util.url_encode(source) ]
      query << [ 'utm_medium', ERB::Util.url_encode(medium) ]
      query << [ 'utm_campaign', ERB::Util.url_encode(campaign_name) ]
      
      # Update the query
      uri.query = URI.encode_www_form(query)
      uri
    end
  end
end
