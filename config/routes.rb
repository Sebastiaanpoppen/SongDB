Rails.application.routes.draw do
  resources :songs
  resources :artists
  resources :photos
  root to: "artists#index"



end
