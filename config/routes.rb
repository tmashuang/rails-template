Rails.application.routes.draw do

  get 'sessions/new'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  get 'logout', to: 'sessions#destroy'

  resources :products

  resources :users

  resources :sessions

  root 'products#index'


  resources :categories
end
