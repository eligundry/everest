module ApplicationHelper
  def subreddit_badge(name)
    "<span class='badge #{name[0].downcase}'>/r/#{name}</span>".html_safe
  end

  def post_time(time)
    Time.at(time).strftime('%H:%M:%S')
  end

  def post_date(time)
    Time.at(time).strftime('%M/%d/%Y')
  end

  def post_link(subreddit, id)
    "/r/#{subreddit}/#{id}"
  end

  def to_markdown(text)
    require 'redcarpet'
    options = { :autolink => true }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    markdown.render(text).html_safe
  end

  def embedly_preview(url)
    require 'embedly'
    options = {
      :user_agent => "/r/everest v0.1 u/eligundry",
      :key => '01a99403789e407398af90c176f57630'
    }

    api = Embedly::API.new(options)
    api.oembed({ :url => url })[0].marshal_dump
  end
end
