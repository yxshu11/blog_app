Rails.application.routes.draw do
  
  

  root 'landing_pages#home'

  get 'signup' => 'users#new'
  get 'show_user' => 'users#show'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'newpost' => 'posts#new'

  resources :user_sessions
  resources :users
  resources :posts
  
end
