Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/auth/facebook/callback' => 'sessions#create'
  
  resources :users do 
    resources :tasks
  end 


  get '/', to: 'user#login'

end
