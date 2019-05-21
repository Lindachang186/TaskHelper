Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/facebook/callback' => 'sessions#create'
  post 'login' => 'sessions#create'

  get '/users/home' => 'users#home'

  delete '/logout' => 'sessions#destroy' 
  
  resources :users, :only => [:create, :new] do 
    resources :tasks
  end 

  root 'users#login'

end
