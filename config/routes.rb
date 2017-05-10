Rails.application.routes.draw do
  resources :comments
  resources :arts do
    resources :transactions
  end
  resources :users

  root( 'welcome#index' )

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
