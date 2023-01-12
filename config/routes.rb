Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants

  #Logins Sessions 
  get '/login',  to: 'logins#new'
  post '/login',  to: 'logins#create'
  get '/logout', to: 'logins#destroy'
    resources :users do
      resources :orders
     end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
