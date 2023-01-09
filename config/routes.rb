Rails.application.routes.draw do
  devise_for :users, controllers:{
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  resources :patterns
  resources :dmcs
  resources :beads
  resources :metallics
  resources :silks
  resources :dmcs
  
  # get '/patterns', to: 'pages#patterns,'
  # get '/silks', to: 'pages#silks,'
  # get '/dmc,', to: 'pages#dmc'
  # get '/metallics', to: 'pages#metallics'
  # get '/beads', to: 'pages#beads'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
