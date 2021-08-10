Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to:'homes#top'
  resources :books,only:[:create,:index,:edit,:update,:destroy,:show]

  resources :users,only:[:show,:index,:edit,:update,:destroy]
end
