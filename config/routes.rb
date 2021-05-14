Rails.application.routes.draw do
  # 管理者側
  devise_for :admins
  get "/admin" => "homes#top"
  resources :genres, only: [:index, :create, :edit, :update]

  # ユーザー側


end
