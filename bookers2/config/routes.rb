Rails.application.routes.draw do
  devise_for :users
  root to:'homes#top'
  resources :books,only:[:create,:index,:edit,:update,:destroy]
end
