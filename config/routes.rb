Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  resources :foods, only: [:index]
  resources :recipes, only: [:index, :show]
  resources :inventories, only: [:index, :show]
  resources :shopping_lists, only: [:index]
  resources :public_recipes, only: [:index]
end
