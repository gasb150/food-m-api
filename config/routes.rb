Rails.application.routes.draw do
  resources :restaurants
  resources :menus
  resources :food_dishes
  resources :food_types
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
