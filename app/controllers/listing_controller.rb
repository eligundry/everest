class ListingController < ApplicationController
  require 'snoo'

  def index
    reddit = Snoo::Client.new
    options = { :page => 'top' }
    @listings = reddit.get_listing(options)["data"]["children"]
  end

  def r
    reddit = Snoo::Client.new
    options = { :subreddit => params[:subreddit], :page => 'top' }
    @listings = reddit.get_listing(options)["data"]["children"]
  end
end
