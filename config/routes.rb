Rails.application.routes.draw do
  resources :users do
    resources :wineries do
      resources :bottles, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  resources :comments


  get 'sessions/new'


  root 'static#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/auth/facebook/callback' => 'sessions#create'
  get '/auth/failure', :to => 'static#home'


end
