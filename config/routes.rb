# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts, controllers: {
    registrations: 'registrations'
  }
  resources :posts
  resources :properties
  resources :projects
  get '/blog' => 'posts#latest', as: :blog

  # admin routes
  get '/accounts' => 'admin#accounts', as: :accounts

  get '/dashboard' => 'dashboard#index', as: :dashboard
  get '/profile/:id' => 'dashboard#profile', as: :profile
  post 'agent/message' => 'properties#email_agent', as: :email_agent
  get  '/latest' => 'properties#latest', as: :latest
  get  '/builders' => 'admin#builders', as: :builders
  get  '/interior_designers' => 'admin#designers', as: :designers
  root to: 'public#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
