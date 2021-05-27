Rails.application.routes.draw do
  resources :places
  devise_for :users
  resources :jobposters
  #get 'home/index'
  get 'home/about'
   #root 'home#index'
 	root 'jobposters#index'  

 	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
