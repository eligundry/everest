Everest::Application.routes.draw do
  get "listing/index"

  root :to => "listing#index"
end
