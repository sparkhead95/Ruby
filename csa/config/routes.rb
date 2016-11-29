Rails.application.routes.draw do
  resources :users do
    get 'search', on: :collection
  end
  
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
 
  resources :broadcasts, except: [:edit, :update]
  
  # A singleton resource and so no paths requiring ids are generated
  # Also, don't want to support editing of the session
  resource :session, only: [:new, :create, :destroy]
  
  get 'home', to: 'home#index', as: :home
 
  # Will support the following styles of URL:
  # /api/users.json
  # /api/users/1.json
  # /api/users
  namespace :api, defaults: {format: :json} do
    resources :users, except: [:new, :edit]
  end
 
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
