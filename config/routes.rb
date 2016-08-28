Rails.application.routes.draw do
  resources :photos
  resources :users

  root 'photos#index'

  get '/signin', to: "sessions#new"
  post '/signin', to: "sessions#create"
  delete '/signout', to: "sessions#destroy", as: 'signout'
  
  get '/signup', to: 'registrations#new',  as: 'signup'

  post '/signup', to: 'registrations#create'
  post 'photos/:id/add_vote' => 'photos#add_vote', :as => :photo_vote
end
