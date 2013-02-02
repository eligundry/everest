class ListingController < ApplicationController
  def index
    require 'snoo'

    reddit = Snoo::Client.new
    options = { :subreddit => 'all', :page => 'top' }

    @listings = reddit.get_listing(options)["data"]["children"]
  end
end
