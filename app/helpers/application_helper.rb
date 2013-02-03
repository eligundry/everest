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
end
