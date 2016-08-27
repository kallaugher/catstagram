Rails.application.routes.draw do
  resources :photos

  root 'photos#index'

  get '/signin' => 'sessions#new', as: 'login'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy', as: 'logout'

  get '/signup', to: 'registrations#new',  as: 'signup'
  post '/registrations', to: 'registrations#create'

end
