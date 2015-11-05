require 'spec_helper'

describe Buckygem::GoogleAnalyticsLinkBuilder do
  describe '#campaign_url' do
    it "outputs a valid URL" do
      builder = Buckygem::GoogleAnalyticsLinkBuilder.new
      res = builder.campaign_url('http://foo.tld/bar', 'source', 'medium', 'name')
      expect(res).not_to be_nil
      expect(res.to_s).to eq 'http://foo.tld/bar?utm_source=source&utm_medium=medium&utm_campaign=name'
    end
    
    it "knows how to deal with more complex stuff" do
      builder = Buckygem::GoogleAnalyticsLinkBuilder.new
      res = builder.campaign_url('https://blog.statium.io/rating-national-football-teams-and-predicting-the-unpredictable.html', 'buckygem', 'test', 'Rating National Football Teams and Predicting the Unpredictable')
      expect(res).not_to be_nil
      expect(res.to_s).to eq 'https://blog.statium.io/rating-national-football-teams-and-predicting-the-unpredictable.html?utm_source=buckygem&utm_medium=test&utm_campaign=Rating%20National%20Football%20Teams%20and%20Predicting%20the%20Unpredictable'
    end

    it "knows how to extend querys" do
      builder = Buckygem::GoogleAnalyticsLinkBuilder.new
      res = builder.campaign_url('http://foo.tld/bar?x=y', 'source', 'medium', 'name')
      expect(res).not_to be_nil
      expect(res.to_s).to eq 'http://foo.tld/bar?x=y&utm_source=source&utm_medium=medium&utm_campaign=name'
    end

    it "knows how to extend fragments" do
      builder = Buckygem::GoogleAnalyticsLinkBuilder.new
      res = builder.campaign_url('http://foo.tld/bar#toto', 'source', 'medium', 'name')
      expect(res).not_to be_nil
      expect(res.to_s).to eq 'http://foo.tld/bar?utm_source=source&utm_medium=medium&utm_campaign=name#toto'
    end

    it "knows how to extend querys AND fragments" do
      builder = Buckygem::GoogleAnalyticsLinkBuilder.new
      res = builder.campaign_url('http://foo.tld/bar?x=y#toto', 'source', 'medium', 'name')
      expect(res).not_to be_nil
      expect(res.to_s).to eq 'http://foo.tld/bar?x=y&utm_source=source&utm_medium=medium&utm_campaign=name#toto'
    end
  end
end