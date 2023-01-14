Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users, controllers:{
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  get '/u/:id', to: 'users#profile', as: 'user'
  resources :user_patterns
  resources :patterns
  resources :dmcs
  resources :beads
  resources :metallics
  resources :silks
  resources :dmcs
  
  get '/edit', to: 'users/registrations#edit'
  get '/gloriana', to: 'pages#gloriana'
  get "/thread_gatherer", to: 'silks#thread_gatherer'
  get "/caron", to: 'pages#caron'
  get "/caron", to: 'pages#caron'
  get "/dinky_dyes", to: 'pages#dinky_dyes'
  # get '/silks', to: 'pages#silks,'
  # get '/dmc,', to: 'pages#dmc'
  # get '/metallics', to: 'pages#metallics'
  # get '/beads', to: 'pages#beads'

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
