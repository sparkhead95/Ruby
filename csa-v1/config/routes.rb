Rails.application.routes.draw do
  resources :users do
  
  get 'search', on: :collection 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
root 'users#index'
end
