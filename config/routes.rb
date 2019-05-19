Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/facebook/callback' => 'sessions#create'
  get '/users/new' => 'users#new'
  
  resources :users, :only => [:create, :new] do 
    resources :tasks
  end 

  get '/', to: 'users#login'

end
