require 'spec_helper'

describe Tweetag::Collector do

  describe "#collect" do
    
    it "collects tweets from the accounts we set" do
      
      retriever = Tweetag::Collector.new 
      # le compte qu'on veut est prédéfini dans Collector.accounts
      
      retriever.collect
      
      retriever.result_acc.each do |cur|
        retriever.accounts.should include(cur)
      end
      # on placera dans result_acc les comptes
      # des tweets qu'on a récupéré

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
    end
  end

end
