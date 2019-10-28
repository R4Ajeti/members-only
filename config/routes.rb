# frozen_string_literal: true

Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  get 'posts/index'
  get 'sessions/new'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  root 'posts#index'
  get '/users/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get 'static_pages/help', as: 'static_pages_help'
  get 'static_pages/home', as: 'static_pages_home'
  get '/posts', to: 'posts#new'
  post '/posts', to: 'posts#create'
  resources :users
  # resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
