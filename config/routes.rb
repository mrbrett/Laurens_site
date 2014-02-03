LaurensSite::Application.routes.draw do
  resources :visuals

  resources :homepage_tiles

  resources :posts

  get 'food' => 'homepage#index'
  get 'about' => 'homepage#index'

  root 'homepage#index'
end
