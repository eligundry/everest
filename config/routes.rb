Everest::Application.routes.draw do
  root :to => "listing#index"

  get "listing/index"

  match 'r/:subreddit' => 'listing#r', :via => :get

  match 'r/:subreddit/:article' => 'post#index', :via => :get
end
