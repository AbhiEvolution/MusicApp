Rails.application.routes.draw do  
  root 'music_albums#index'
  resources :music_albums
end
