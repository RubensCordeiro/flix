# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "movies#index"
  # get "movies", to: "movies#index"
  # get "movies/:id", to: "movies#show", as: "movie"
  # get "movies/:id/edit", to: "movies#edit", as: "edit_movie"
  # patch "movies/:id", to: "movies#update"
  resources :movies
end
