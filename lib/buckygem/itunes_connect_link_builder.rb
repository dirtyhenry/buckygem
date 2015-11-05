module Buckygem
  class ItunesConnectLinkBuilder
    def campaign_url(itunes_app_ID, itunes_provider_ID, campaign_name)
      uri = URI.parse("https://itunes.apple.com/app/apple-store/id" + itunes_app_ID)

      # Get the query
      query = URI.decode_www_form(uri.query || '')
      # and append the new stuff
      query << [ 'pt', ERB::Util.url_encode(itunes_provider_ID) ]
      query << [ 'ct', ERB::Util.url_encode(campaign_name) ]
      query << [ 'mt', 8 ]
      
      # Update the query
      uri.query = URI.encode_www_form(query)
      uri
    end
  end
end
