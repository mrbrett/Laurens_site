LaurensSite::Application.routes.draw do
  resources :homepage_tiles

  resources :posts

  root 'homepage#index'
end
