Rails.application.routes.draw do
  resources :tags
  resources :products
  resources :categories 
  resources :countries
  resources :brands
  
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
