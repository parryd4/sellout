Rails.application.routes.draw do
  resources :comments
  resources :transactions
  resources :arts
  resources :users

  root( 'arts#index' )

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
