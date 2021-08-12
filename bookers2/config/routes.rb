Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'home/top' => 'homes#top'
  get '/home/about' => 'homes#about'
  resources :books,only:[:create,:index,:edit,:update,:destroy,:show]

  resources :users,only:[:show,:index,:edit,:update,:destroy]
end
