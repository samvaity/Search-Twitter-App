require 'rest-client'

class WelcomeController < ApplicationController
  def index
  end

  def search
    puts "hi there"
    # lookup = params[:lookup]
  #  url = "http://example.com/resource"
    response = RestClient.get 'https://api.twitter.com/1.1/search/tweets.json?q=nasa&result_type=popular'
  end
end
