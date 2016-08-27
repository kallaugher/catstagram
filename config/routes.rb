Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :photos

  get '/signin' => 'sessions#new', as: 'login'
  post '/signin' => 'sessions#create'
  delete '/signout' => 'sessions#destroy', as: 'logout'

  get '/registrations', to: 'registrations#new',  as: 'signup'
  post '/registrations', to: 'registrations#create'
end
