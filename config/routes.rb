Bespresso::Application.routes.draw do |map|
  resources :drinkers
  root :to => "drinkers#index"
end
