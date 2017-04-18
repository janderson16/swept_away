Rails.application.routes.draw do
  root to: 'home#show'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]

  resources :home, only: [:show]

  resources :routes, only: [:index]

  resources :all_routes, only: [:index]

  get '/search', to: 'search#index'
end
