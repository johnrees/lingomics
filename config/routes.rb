Lingomics::Application.routes.draw do

  resources :comics


  resources :series
  root to: 'series#index'

end
