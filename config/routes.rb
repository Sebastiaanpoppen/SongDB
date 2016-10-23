Rails.application.routes.draw do
  resources :songs
  resources :artists
  root to: "artists#index"



end
