Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :comments

  post 'login', to: 'auth#create'
  post 'signup', to: 'user#create'
  get 'persist', to: 'auth#show'
end
