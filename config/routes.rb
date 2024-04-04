Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :genres
  resources :directors
  resources :movies
end
