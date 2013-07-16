require 'spec_helper'

describe Tweetag::Collector do

  describe "#collect" do
    
    it "collects tweets from the accounts we set" do
      
      retriever = Tweetag::Collector.new("z0zard","bbird")  
      # retriever.account = "z0zard" et retriever.hashtag = "#bbird"
      retriever.collect
      retriever.results.should be_instance_of(Array)
      # Array<Tweetag::Result> plus précisemment


      retriever.results.each do |received_tweet|
        received_tweet.should be_instance_of(Tweetag::Result)
        received_tweet.author.should be_instance_of(String)
        received_tweet.text.should be_instance_of(String)
        expect(retriever.account).to eq(received_tweet.author)
      end

    end

    it "collects tweets with the hashtag we want" do 

      retriever = Tweetag::Collector.new("z0zard","bbird")  
      # retriever.account = "z0zard" et retriever.hashtag = "#bbird"
      retriever.collect
      retriever.results.should be_instance_of(Array)
      # Array<Tweetag::Result> plus précisemment


      retriever.results.each do |received_tweet|
        received_tweet.should be_instance_of(Tweetag::Result)
        received_tweet.author.should be_instance_of(String)
        received_tweet.text.should be_instance_of(String)
        expect(received_tweet.text).to include("##{retriever.hashtag}")
      end


    end
  
  end

  describe "#display" do
    it "displays tweets properly" do
      pending
    end
  end

end
