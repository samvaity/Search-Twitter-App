class WelcomeController < ApplicationController
  def index
  end

  def search
    require "rubygems"
    require "twitter"
    puts Rails.application.secrets.twitter_consumer_key
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Rails.application.secrets.twitter_consumer_key
      config.consumer_secret     = Rails.application.secrets.twitter_consumer_secret
      config.access_token        = Rails.application.secrets.twitter_access_token
      config.access_token_secret = Rails.application.secrets.twitter_access_token_secret
    end

    query = params[:search_form][:query]
    # search a status update
    # client.search(params[:search_form][:query]).take(3).collect do |tweet|
    #   puts "#{tweet.user.screen_name}: #{tweet.text}"
    # end
    tweets = Array.new
    client.search(query).take(3).collect do |tweet|
      tweets.push(tweet.text)
    end
    redirect_to controller: 'shared', action: 'tweets', param: tweets, query: query
  end

end
