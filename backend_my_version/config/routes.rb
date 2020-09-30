Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

      #SignUp route:
      resources :users, only: [:create]

      #Login route:
      post '/login', to: 'auth#create'

      #Retrieve user Route (for verifying a token is valid to stay logged in)
      get '/profile', to: 'users#profile'
      
    end
  end
end
