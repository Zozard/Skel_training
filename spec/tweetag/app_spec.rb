require 'spec_helper'

describe Tweetag::Collector do

  describe "#collect" do
   
    before(:each) do
      @retriever = Tweetag::Collector.new("z0zard","bbird")  
      @retriever.collect
    end

    it "collects tweets from the accounts we set" do
      
      @retriever.results.each do |received_tweet|
        expect(@retriever.account).to eq(received_tweet.author)
      end

    end

    it "collects tweets with the hashtag we want" do 

      @retriever.results.each do |received_tweet|
        expect(received_tweet.text).to include("##{@retriever.hashtag}")
      end


    end
  
  end

end

  describe Tweetag::Result do

    describe "#print" do
      it "displays tweets properly" do
        pending
    end
  end

end
