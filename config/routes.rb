Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "restaurants", to: "restaurants#index"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  # patch "restaurants/:id", to: "restaurants#update"
  # delete "restaurants/:id", to: "restaurants#destroy"
  root "restaurants#index"
  resources :restaurants do
    collection do
      get :top
    end
    member do
      get :chef
    end
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
