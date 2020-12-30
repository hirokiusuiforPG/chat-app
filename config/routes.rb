Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  # ユーザー編集に必要なルーティングはeditとupdateだけ
  resources :rooms, only: [:new, :create]
end
