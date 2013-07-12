require 'twitter'

module Tweetag
  class Collector

    attr_accessor :accounts, :hashtag, :result, :result_acc, :result_tweets
    def initialize
      
      Twitter.configure do |config|
        config.consumer_key = "KgdRthRd0H1LvTcYMxBxJQ"
        config.consumer_secret = "dQGaEcbPPIbnM4On6eyHNrYwp1lEPGv8vM3RlxLt8" 
        config.oauth_token = "90441345-JEcCGq1OnBaAl5sNzdN2diHk1vgtLvWoKDWbXV54e" 
        config.oauth_token_secret = "YlvawOP9bAI979qBRusPStWHYvg1oQh5tF57sAfHo" 
      end
    end

    def collect
    end


    def display

    end

  end
end
