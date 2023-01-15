Rails.application.routes.draw do
  root "pages#home"
  
  get 'users/profile'
  devise_for :users, controllers:{
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  get '/u/:id', to: 'users#profile', as: 'user'
  resources :patterns
  resources :beads
  resources :metallics
  resources :silks
  resources :dmcs
  
  get '/edit', to: 'users/registrations#edit'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
