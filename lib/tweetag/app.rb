require 'twitter'

module Tweetag
  class Collector

    attr_accessor :accounts, :hashtag, :result, :result_acc, :result_tweets
    def initialize

      @accounts = ["z0zard"]
      @hashtag = "bbird"
      
      Twitter.configure do |config|
        config.consumer_key = "KgdRthRd0H1LvTcYMxBxJQ"
        config.consumer_secret = "dQGaEcbPPIbnM4On6eyHNrYwp1lEPGv8vM3RlxLt8" 
        config.oauth_token = "90441345-JEcCGq1OnBaAl5sNzdN2diHk1vgtLvWoKDWbXV54e" 
        config.oauth_token_secret = "YlvawOP9bAI979qBRusPStWHYvg1oQh5tF57sAfHo" 
      end
    end

    def collect

      # faisons la requete 
      query = Twitter.search("##{@hashtag}from:#{@accounts[0]}}", :result_type => "recent")
      # ^^^^^^^^^^ ceci est un Twitter::SearchResults


      # preparons la variable result_acc
      # qui doit contenir les comptes auteurs 
      # des tweets qu'on a reçu
      tab_tweets=query.statuses
      # ^^^^^^^^^^^^^^^^^^^^^^^ ceci est un Array<Twitter::Tweet>
      @result_acc = Array.new

      tab_tweets.each do |cur|
        @result_acc<<cur
      end

      # preparons la variable result_tweets

      @result_tweets = Array.new

      tab_tweets.each do |cur|
        @result_tweets<<cur
      end

    end


    def display

    end

  end
end
