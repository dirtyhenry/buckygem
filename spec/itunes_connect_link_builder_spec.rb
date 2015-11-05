require 'spec_helper'

describe Buckygem::ItunesConnectLinkBuilder do
  describe '#campaign_url' do
    it "outputs a valid URL" do
      builder = Buckygem::ItunesConnectLinkBuilder.new
      res = builder.campaign_url('1021607999', '117714734', 'Ma campagne')
      expect(res).not_to be_nil
      expect(res.to_s).to eq 'https://itunes.apple.com/app/apple-store/id1021607999?pt=117714734&ct=Ma%20campagne&mt=8'
    end
  end
end