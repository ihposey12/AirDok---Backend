Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :hangars
  resources :comments

  post '/login', to: 'auth#create'
  post '/signup', to: 'users#create'
  post '/hangar_rentals', to: 'hangar_rentals#create'
  get '/persist', to: 'auth#show'
  get '/hangars', to: 'hangars#index'
  get '/hangars', to: 'hangar#show'
  get '/users', to: 'users#show'
  get '/comments', to: 'comments#index'
  get '/comment', to: 'comment#show'
end
