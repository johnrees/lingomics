Lingomics::Application.routes.draw do

  resources :comics
  resources :series
  resources :users, only: [:show]

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  root to: 'series#index'

end
