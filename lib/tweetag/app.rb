require 'twitter'

module Tweetag
  class Collector

    attr_accessor :account, :hashtag, :results

    def initialize(account, hashtag)

      @account = account
      @hashtag = hashtag

      @results = Array.new
     
      # définition des credentials

      Twitter.configure do |config|
        config.consumer_key = "KgdRthRd0H1LvTcYMxBxJQ"
        config.consumer_secret = "dQGaEcbPPIbnM4On6eyHNrYwp1lEPGv8vM3RlxLt8" 
        config.oauth_token = "90441345-JEcCGq1OnBaAl5sNzdN2diHk1vgtLvWoKDWbXV54e" 
        config.oauth_token_secret = "YlvawOP9bAI979qBRusPStWHYvg1oQh5tF57sAfHo" 
      end
    end

    def collect

      # faisons la requete 
      query = Twitter.search("##{@hashtag} from:#{@account}}", :result_type => "recent")


      tweets_info=query.statuses
      r = Result.new  


      tweets_info.each_with_index do |tweet, index|
        r.text = tweet.text
        r.author = tweet.from_user
        @results << r
      end

    end

  end

  class Result
    
    attr_accessor :author, :text
   
    def initialize
    end


    def print
    end
  end
  
end
