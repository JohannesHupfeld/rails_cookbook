Rails.application.routes.draw do
  root "sessions#home"

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  
  #login route
  #logout route
  delete '/logout' => 'sessions#destroy'# Important that its delete so that the user cant view it in the url bar 

  
  # resources :categories
  resources :comments
  resources :recipes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
