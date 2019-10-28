Rails.application.routes.draw do

  resources :users do
      resources :bottles, only: [:show, :index] do
        resources :bottle_prices
      end
  end



  resources :bottles, only: [:index, :show, :new, :create, :edit, :update]
  resources :wineries


  get 'sessions/new'

  get '/highest_value', to: 'users#highest_value'


  root 'static#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/auth/facebook/callback' => 'sessions#create'
  get '/auth/failure', :to => 'static#home'

  get 'current_user' => "users#cookie_user"


end
