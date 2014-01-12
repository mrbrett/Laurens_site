LaurensSite::Application.routes.draw do
  resources :visuals

  resources :homepage_tiles

  resources :posts

  root 'homepage#index'
end
