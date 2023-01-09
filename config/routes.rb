Rails.application.routes.draw do
  root 'users#index'

   resources :users do
    resources :restaurants 
   end 
   
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
