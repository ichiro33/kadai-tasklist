Rails.application.routes.draw do
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
  
  get '/users', to: 'tasks#index'
  root to: 'tasks#index'
  resources :tasks
end
