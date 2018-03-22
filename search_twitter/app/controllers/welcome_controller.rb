class WelcomeController < ApplicationController
  def index
  end

  def search
    render plain: params[:search].inspect
  end
end
