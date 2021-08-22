Rails.application.routes.draw do
  get '/search' => 'search#search'
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'home/top' => 'homes#top'
  get '/home/about' => 'homes#about'

  resources :books,only:[:create,:index,:edit,:update,:destroy,:show] do
    resources :book_comments,only:[:create,:destroy]
    resource :favorites,only:[:create,:destroy]
 end

  resources :users,only:[:show,:index,:edit,:update,:destroy] do
    resource :relationships,only:[:create,:destroy]

    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
 end
end
