Rails.application.routes.draw do
  devise_for :users
  root to: 'records#index'

  resources :records  do
      resources :comments, only: :create
  end

  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
    
  





  resource :user, except: [:new, :create, :destroy]





end
