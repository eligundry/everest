module ApplicationHelper
  def subreddit_color(name)
    nil
  end

  def post_time(time)
    Time.at(time).strftime('%H:%M:%S')
  end

  def post_date(time)
    Time.at(time).strftime('%M/%d/%Y')
  end
end
