Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants
    resources :users do
      resources :orders
     end 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
