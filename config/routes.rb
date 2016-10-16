Rails.application.routes.draw do
  resources :songs
  resources :artists
  root to: "songs#index"



end
