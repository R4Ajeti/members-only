# frozen_string_literal: true

Rails.application.routes.draw do
  # root
  root 'posts#index'
  # static pages
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  # signup
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  # login
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # posts
  get '/posts', to: 'posts#new'
  post '/posts', to: 'posts#create'
  # users
  resources :users
  # resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
