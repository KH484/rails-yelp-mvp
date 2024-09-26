Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  GET "restaurants", to: "restaurants#index"
  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  GET "restaurants/new", to: "restaurants#new"
  POST "restaurants", to: ?
  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  GET "restaurants/:id", to: "restaurants#reviews"
  # A visitor can add a new review to a restaurant
  GET "restaurants/:id/reviews/new", to: "restaurants# ?"
  POST "restaurants/:id/reviews", to: "?"
  # And that’s it!
end
