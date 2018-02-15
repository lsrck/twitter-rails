class HomeController < ApplicationController
	 
  def index

  end

  def create
  	@tweet = params[:tweet]
  	redirect_to home_index_path
  	SendTweet.new(@tweet).perform
  end

end
