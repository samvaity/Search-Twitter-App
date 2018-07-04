class SharedController < ActionController::Base
  protect_from_forgery with: :exception
  def tweets
    @tweets = params[:param]
    @query = params[:query]
  end
end
