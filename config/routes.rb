Rails.application.routes.draw do
  resources :authors
  root :to => 'authors#new'
end
