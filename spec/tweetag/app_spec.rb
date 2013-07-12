require 'spec_helper'
require 'twitter'

module Tweetag
  describe Collector do

    describe "#collect" do
      it "collects tweets from the accounts we set with the hashtags we want"
     
      tweetos = Array.new
      hashtag = String.new

      collec = Collector.new(tweetos, hashtag)
      # un objet de type Collector est créé, il contiendra 
      # la liste prédéfinie des tweetos dont on veut
      # récupérer les tweets et le hashtag des tweets
      # qui nous intéressent
      resultat = Twitter::SearchResults.new
      # un objet de type SearchResults est créé
      # c'est la dedans que seront stockés les 
      # résultats de notre requete
      
      resultat.results.map do |status|
        collec.tweetos.should include?(status.from_user)
        status.text.should include?(collec.hashtag)
      end

      # on va vérifier que chacun des résultats est bien
      # émis par un tweetos de notre liste et que 
      # le hashtag qui nous intéresse est bien contenu 
      # dans chacun des tweets récéptionnés
      
    end
  
    describe "#display" do
      it "displays tweets properly"
    end

  end
end
