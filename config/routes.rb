Lingomics::Application.routes.draw do

  resources :series
  root to: 'series#index'

end
