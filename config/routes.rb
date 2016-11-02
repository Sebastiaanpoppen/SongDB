Rails.application.routes.draw do

  resources :artists do
    resources :songs
  end
  resources :photos
  resources :songs
  root to: "artists#index"


end
