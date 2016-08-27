Rails.application.routes.draw do
  resources :photos
  resources :users
  
  root 'photos#index'

  get '/signin' => 'sessions#new', as: 'login'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy', as: 'logout'

  get '/signup', to: 'registrations#new',  as: 'signup'
<<<<<<< HEAD
  post '/registrations', to: 'registrations#create'
=======
  post '/signup', to: 'registrations#create'
>>>>>>> 8ba295b0f0de2b303fa96f118783601f90b9f93b

end
