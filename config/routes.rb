Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # view all restaurants
  get "/restaurants", to: "restaurants#index"

  # add a new restaurant, and be redirected to the show view of that new restaurant.
  get "/restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "/restaurants", to: "restaurants#create"
  
  # see the details of a restaurant, with all the reviews related to the restaurant.
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  # add a new review to a restaurant
  get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  post "/restaurants/:restaurant_id/reviews", to: "reviews#create"

  resources :restaurants do
    resources :reviews
  end

end
