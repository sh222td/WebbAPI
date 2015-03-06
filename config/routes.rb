Rails.application.routes.draw do
  
  root 'users#index'
  
  get 'apikeys'         => 'apikeys#show', as: :apikey
  get 'addAPI'          => 'apikeys#add'
  get 'delete'          => 'users#destroy'
  
  post 'login'        => 'users#login',        :as => "login"
  get  'logout'       => 'users#logout',       as:    :logout
  
  resources :users

  namespace :api do
    resources :events
  end
 
end
