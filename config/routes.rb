Rails.application.routes.draw do
  root to: 'toppagess#index'    
  
  resources :tasks
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :create]
end
