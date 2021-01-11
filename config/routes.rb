Rails.application.routes.draw do
  root to: "tasks#index"
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post 'login', to: 'sessions#edit'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :edit, :new, :create]
  
  resources :tasks  
end