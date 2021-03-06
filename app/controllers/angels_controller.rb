class AngelsController < ApplicationController
  def index
    
  end

  def twitter
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_KEY"]
      config.consumer_secret     = ENV["TWITTER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
    render json: client.user_timeline('angels')
  end

  def instagram
    Instagram.configure do |config|
     config.client_id = ENV["INSTAGRAM_KEY"]
     config.client_secret = ENV["INSTAGRAM_SECRET"] 
     config.access_token = ENV["INSTAGRAM_ACCESS_TOKEN"]
    end
    render json: Instagram.user_recent_media(46781993)
  end

  def tumblr
    Tumblr.configure do |config|
      config.consumer_key = ENV["TUMBLR_KEY"]
      config.consumer_secret = ENV["TUMBLR_SECRET"]
    end
    client = Tumblr::Client.new(:client => :httpclient)
    render json: client.posts("angels.tumblr.com", :limit => 11)
  end

  def api
    render json: Angel.all
  end

  def official
    render json: Angel.where(source: "Official Site")
  end

  def latimes
    render json: Angel.where(source: "LA Times")
  end

  def espn
    render json: Angel.where(source: "ESPN")
  end

  def ocregister
    render json: Angel.where(source: "OC Register")
  end

  def dailynews
    render json: Angel.where(source: "Daily News")
  end

  def cbs
    render json: Angel.where(source: "CBS Los Angeles")
  end

  def bleacher_report
    render json: Angel.where(source: "Bleacher Report")
  end

  def fox_sports
    render json: Angel.where(source: "FOX Sports")
  end
end
