class PostController < ApplicationController
  def index
    comment_options = {
      :subreddit => params[:subreddit],
      :link_id => params[:article],
      :depth => 1
    }

    res = Reddit.new().snoo.get_comments(comment_options)

    @comments = res[1]["data"]["children"]
    @post = res[0]["data"]["children"][0]["data"]
  end
end
