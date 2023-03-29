Rails.application.routes.draw do
  resources :carts, only: [:index, :create, :destroy]
  resources :items, only: [:index]
  resources :categories, only: [:index, :show]
  post "/signup", to: "users#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
