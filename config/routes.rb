Rails.application.routes.draw do
  root to: 'home#index'
  resources :posts
  resources :comments, except: [:index, :show]
  resources :ratings, only: [:new, :create, :destroy]
end
