Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/projects'
  get 'pages/silks'
  get 'pages/dmc'

  get 'pages/metallics'
  get 'pages/beads'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

  resources :patterns do
    resources :beads
    resources :metallics
    resources :silks
  end
end
