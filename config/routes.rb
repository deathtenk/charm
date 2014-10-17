Rails.application.routes.draw do
  resources :projects

  resources :portfolios

  resources :profiles

  resources :posts

  resources :blogs

  resources :authors
  root :to => 'authors#new'
end
