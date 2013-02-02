Everest::Application.routes.draw do
  root :to => "listing#index"

  get "listing/index"

  match 'r/:subreddit' => 'listing#r', :via => :get
end
