require 'spec_helper'

describe Tweetag::Collector do

  describe "#collect" do
    
    it "collects tweets from the accounts we set" do
      
      retriever = Tweetag::Collector.new("z0zard","bbird")  
      # retriever.accounts = ["z0zard"] et retriever.hashtag = "bbird"
      retriever.results = retriever.collect
      retriever.results.should be_instance_of(Array)
      # Array<Tweetag::Result> plus précisemment


      retriever.results.each do |current|
        current.should be_instance_of(Tweetag::Result)
        current.author.should be_instance_of(String)
        current.tweet.should be_instance_of(String)
        retriever.account.should include(current.author)
      end

    end

    it "collects tweets with the hashtag we want" do 

      retriever = Tweetag::Collector.new 

      retriever.collect

      retriever.result_tweets.each do |cur|
        cur.should include(retriever.hashtag)
      end

    end
  
  end

  describe "#display" do
    it "displays tweets properly" do
      pending
    end
  end

end
