Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :hangars
  resources :comments

  post '/login', to: 'auth#create'
  post 'signup', to: 'users#create'
  get 'persist', to: 'auth#show'
  get 'hangars', to: 'hangars#index'
  get 'users', to: 'users#show'
end
