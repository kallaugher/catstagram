Rails.application.routes.draw do
  resources :photos
  resources :users
  
  root 'photos#index'

  get '/signin' => 'sessions#new', as: 'login'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy', as: 'logout'

  get '/signup', to: 'registrations#new',  as: 'signup'
  post '/signup', to: 'registrations#create'

end
