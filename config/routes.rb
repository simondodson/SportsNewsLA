SportsNewsLA::Application.routes.draw do
  root "home#index"
  scope :api do
    # Routes to all stories
    get "/lakers(.:format)" => "lakers#index"
    get "/dodgers(.:format)" => "dodgers#index"
    get "/clippers(.format)" => "clippers#index"
    get "/kings(.:format)" => "kings#index"
    get "/bruins(.:format)" => "bruins#index"
    get "/trojans(.:format)" => "trojans#index"
    get "/sparks(.:format)" => "sparks#index"
    get "/galaxies(.:format)" => "galaxies#index"
    get "/chivas(.:format)" => "chivas#index"

    # Routes to stories from official team sites
    get "/lakers/official(.:format)" => "lakers#official"
    get "/clippers/official(.:format)" => "clippers#official"
    get "/dodgers/official(.:format)" => "dodgers#official"
    get "/kings/official(.:format)" => "kings#official"
    get "/galaxies/official(.:format)" => "galaxies#official"
    get "/chivas/official(.:format)" => "chivas#official"  
    get "/bruins/official(.:format)" => "bruins#official"  
  end
end
