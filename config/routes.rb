Rails.application.routes.draw do
  devise_for :users
  root to: 'records#index'

  resources :records  do
    resource :favorites, only: [:create, :destroy]
  end

    
   


end
