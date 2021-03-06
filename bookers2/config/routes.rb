Rails.application.routes.draw do
  get '/search' => 'search#search'
  get '/search/:category' => 'search#search_category',as: 'search_category'
  get '/search_date' => 'search#search_date',as: 'search_date'

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

 resources :groups do
   resources :group_users,only:[:create,:destroy]
    get "new/mail" => "groups#new_mail"
    get "send/mail" => "groups#send_mail"
 end

 resources :messages, only:[:create]
 resources :rooms, only:[:create,:show]
end
