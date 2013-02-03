class ListingController < ApplicationController
  def index
    options = { :page => 'hot' }
    @l = Reddit.new().snoo.get_listing(options)["data"]["children"]
  end

  def r
    options = {
      :subreddit => params[:subreddit],
      :page => 'hot'
    }
    @l = Reddit.new().snoo.get_listing(options)["data"]["children"]
  end
end
